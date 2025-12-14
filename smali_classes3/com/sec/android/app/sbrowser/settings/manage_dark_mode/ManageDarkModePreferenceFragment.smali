.class public Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"


# instance fields
.field private mApplyDefaultDarkMode:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mChoicesLength:I

.field private mWebDarkModeBrightness:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

.field private mWebDarkModeBrightnessThumbnail:Landroidx/preference/Preference;

.field private mWebDarkModeBrightnessTitle:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->lambda$onCreate$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->lambda$onCreate$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onCreate$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setVAXContrastFactor(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCreate$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setForceDarkBehavior(I)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->updateBrightnessSettingEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->updateApplyDefaultDarkModeDotVisibility()V

    return p2
.end method

.method private setManageDarkMode(I)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->setManageDarkModeSetting(I)V

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->setNightModeEnabled(Z)V

    :goto_1
    return-void
.end method

.method private setTitle()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v0, 0x7f14041f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method private updateApplyDefaultDarkModeDotVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->mApplyDefaultDarkMode:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isApplyDefaultDarkModeSettingsVisited()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->recordApplyDefaultDarkModeSettingsVisited()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->mApplyDefaultDarkMode:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->mApplyDefaultDarkMode:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f14105a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setDotContentDescription(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateBrightnessSettingEnabled(Z)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getManageDarkModeSetting()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v0

    xor-int/2addr v0, v3

    and-int/2addr v0, v2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->mWebDarkModeBrightnessTitle:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->mWebDarkModeBrightnessThumbnail:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->mWebDarkModeBrightness:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isApplyDefaultDarkModeEnabled()Z

    move-result v0

    if-eqz p1, :cond_2

    xor-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->mWebDarkModeBrightnessTitle:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->mWebDarkModeBrightnessThumbnail:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->mWebDarkModeBrightness:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method private updateRadioButtonPreference(IZ)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->mChoicesLength:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    if-ne p1, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setChecked(Z)V

    invoke-virtual {v2, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->updateBrightnessSettingEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140c87

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "549"

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lw2/A;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getManageDarkModeSetting()I

    move-result p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->updateRadioButtonPreference(IZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p1, 0x7f180027

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f030028

    goto :goto_0

    :cond_1
    const v0, 0x7f030027

    goto :goto_0

    :cond_2
    const v0, 0x7f030029

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f030025

    goto :goto_1

    :cond_3
    const v1, 0x7f030026

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->mChoicesLength:I

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    iget v3, p0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->mChoicesLength:I

    if-ge v2, v3, :cond_5

    new-instance v3, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v4

    aget-object v5, p1, v2

    aget-object v6, v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget v4, p0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->mChoicesLength:I

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_4

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setDivideVisibility(Z)V

    :cond_4
    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const p1, 0x7f180045

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    const-string p1, "pref_web_dark_mode_brightness_title"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->mWebDarkModeBrightnessTitle:Landroidx/preference/Preference;

    const-string p1, "pref_web_dark_mode_brightness_thumbnail"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->mWebDarkModeBrightnessThumbnail:Landroidx/preference/Preference;

    const-string p1, "pref_web_dark_mode_brightness"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->mWebDarkModeBrightness:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    new-instance v0, LA9/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LA9/b;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    const-string p1, "pref_apply_default_dark_mode"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->mApplyDefaultDarkMode:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isApplyDefaultDarkModeEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->mApplyDefaultDarkMode:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    new-instance v0, LAa/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LAa/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->updateApplyDefaultDarkModeDotVisibility()V

    :cond_6
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "make_dark_never"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v5, "when_phone_dark_mode_is_on"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v4, v0

    goto :goto_0

    :sswitch_2
    const-string v5, "pref_apply_default_dark_mode"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v4, v1

    goto :goto_0

    :sswitch_3
    const-string v5, "make_dark_always"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->setManageDarkMode(I)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->updateRadioButtonPreference(IZ)V

    const-string v0, "Off"

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->setManageDarkMode(I)V

    invoke-direct {p0, v3, v1}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->updateRadioButtonPreference(IZ)V

    const-string v0, "Match phone setting"

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->updateBrightnessSettingEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->updateApplyDefaultDarkModeDotVisibility()V

    :goto_1
    const-string v0, ""

    goto :goto_2

    :pswitch_3
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->setManageDarkMode(I)V

    invoke-direct {p0, v1, v1}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->updateRadioButtonPreference(IZ)V

    const-string v0, "On"

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f140c84

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f140d52

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lw2/A;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x148fa1d9 -> :sswitch_3
        -0x50e345f -> :sswitch_2
        0x569e8fcb -> :sswitch_1
        0x73a71b74 -> :sswitch_0
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

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getManageDarkModeSetting()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->updateRadioButtonPreference(IZ)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lw2/A;->onStart()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->setTitle()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->scrollToIfNeeded(Lw2/A;Ljava/lang/String;)V

    return-void
.end method
