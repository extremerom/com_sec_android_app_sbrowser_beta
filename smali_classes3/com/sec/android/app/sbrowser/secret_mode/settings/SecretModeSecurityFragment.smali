.class public Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"

# interfaces
.implements Lw2/m;
.implements Lw2/n;
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;


# static fields
.field private static sActivatedTaskId:I


# instance fields
.field private mAllowScreenshotSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mAntiTrackingSecretModeLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

.field private mBiometricsCategory:Landroidx/preference/Preference;

.field private mBiometricsDescription:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

.field protected mBiometricsSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field protected mChangePassword:Landroidx/preference/Preference;

.field protected mFaceSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field protected mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field protected mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field protected mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mIsBiometricsRegistering:Z

.field protected mIsBiometricsSupported:Z

.field protected mIsFaceRegistered:Z

.field protected mIsFaceSupported:Z

.field protected mIsFingerprintRegistered:Z

.field protected mIsFingerprintSupported:Z

.field protected mIsIntelligentRegistered:Z

.field protected mIsIntelligentSupported:Z

.field protected mIsIrisRegistered:Z

.field protected mIsIrisSupported:Z

.field protected mIsMultiBiometricsSupported:Z

.field private mLastClickTime:J

.field private mOffsetChangeListener:Lc6/e;

.field private mOpenInSecretModeSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field protected mPasswordSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field protected mResetSecretMode:Landroidx/preference/Preference;

.field protected mSecretDownloadSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field protected mSecretDownloadTip:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;

.field protected mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

.field protected mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mLastClickTime:J

    new-instance v0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$1;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mOffsetChangeListener:Lc6/e;

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->updateBiometricDescription()V

    return-void
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->updatePreferencesIfUsePassword()V

    return-void
.end method

.method private changePassword()Z
    .locals 2

    const-string v0, "SecretModeSecurityFragment"

    const-string v1, "changePassword"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->getLauncherName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordChangePasswordFromSettings(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    new-instance v1, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$9;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->changePassword(Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    const/4 p0, 0x1

    return p0
.end method

.method private createPassword()V
    .locals 2

    const-string v0, "SecretModeSecurityFragment"

    const-string v1, "createPassword"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->getLauncherName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordCreatePasswordFromSettings(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    new-instance v1, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$8;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->createPassword(Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    return-void
.end method

.method private disableUnusablePreferences()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAllowScreenshotSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAllowScreenshotSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPasswordSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsCategory:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFaceSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSecretDownloadSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadSupported()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSecretDownloadSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mOpenInSecretModeSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mChangePassword:Landroidx/preference/Preference;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFingerprintSupported:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIrisSupported:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFaceSupported:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFaceSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_7
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIntelligentSupported:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportBiometricsWithNonSamsungDevice()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsBiometricsSupported:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsCategory:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsDescription:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSecretDownloadSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadSupported()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSecretDownloadSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_b
    return-void
.end method

.method private disableUsePassword()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFaceSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setBiometricsUsedBefore(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setSecretModeAccessTypeNone()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPasswordSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mChangePassword:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setPasswordAuthEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->updateBiometricDescription()V

    return-void
.end method

.method private enableBiometrics(I)V
    .locals 2

    const-string v0, "enableBiometrics authType:"

    const-string v1, "SecretModeSecurityFragment"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    new-instance v1, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$12;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$12;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;I)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->activate(ILcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    return-void
.end method

.method private getLauncherName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "launcher_name"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTurnOffDialogMessage(II)I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIntelligentScanSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f14064c

    goto :goto_0

    :cond_0
    const p0, 0x7f14064b

    :goto_0
    const/4 v0, 0x4

    const/16 v1, 0x10

    if-ne p2, v0, :cond_1

    if-ne p1, v1, :cond_5

    const p0, 0x7f14064d

    goto :goto_2

    :cond_1
    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIntelligentScanSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f140525

    goto :goto_1

    :cond_2
    const p0, 0x7f140524

    :goto_1
    if-ne p1, v1, :cond_5

    const p0, 0x7f140523

    goto :goto_2

    :cond_3
    if-ne p2, v1, :cond_5

    if-ne p1, v0, :cond_4

    const p0, 0x7f14062d

    goto :goto_2

    :cond_4
    const p0, 0x7f14062e

    :cond_5
    :goto_2
    return p0
.end method

.method private getTurnOffDialogTitle(I)I
    .locals 0

    const/16 p0, 0x8

    if-ne p1, p0, :cond_0

    const p0, 0x7f140526

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    if-ne p1, p0, :cond_1

    const p0, 0x7f14062f

    goto :goto_0

    :cond_1
    const p0, 0x7f14064e

    :goto_0
    return p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->lambda$initSecretDownloadTip$0(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;Landroid/view/View;)V

    return-void
.end method

.method private initSecretDownloadTip()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "secret_download_tip_card"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, LFa/b;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p0, v0}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;->setPositiveButtonListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static isActivatedOtherInstance(I)Z
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->sActivatedTaskId:I

    if-eq v0, p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isAuthRegisteredWithCached(I)Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFingerprintSupported:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFingerprintRegistered:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIrisSupported:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIrisRegistered:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFaceSupported:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFaceRegistered:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_3
    const/16 v0, 0x10

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIntelligentSupported:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIntelligentRegistered:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_4
    :goto_1
    return v2
.end method

.method private isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->lambda$togglePassword$1()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)Landroidx/preference/PreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    return-object p0
.end method

.method private synthetic lambda$initSecretDownloadTip$0(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;Landroid/view/View;)V
    .locals 0

    new-instance p2, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$2;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$2;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;->startRemoveAnimation(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private synthetic lambda$togglePassword$1()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPasswordSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsBiometricsRegistering:Z

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->createPassword()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->disableUnusablePreferences()V

    return-void
.end method

.method private onFaceAuthEnabled(Z)V
    .locals 2

    const-string v0, "onFaceAuthEnabled enabled:"

    const-string v1, "SecretModeSecurityFragment"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuthEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToFaceFingerprint()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToFace()V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFaceSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setFaceAuthEnabled(Z)V

    :goto_1
    return-void
.end method

.method private onFingerprintAuthEnabled(Z)V
    .locals 2

    const-string v0, "onFingerprintAuthEnabled enabled:"

    const-string v1, "SecretModeSecurityFragment"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIntelligentAuthEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIntelligentFingerprint()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisAuthEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIrisFingerprint()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFaceAuthEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToFaceFingerprint()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToFingerprint()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->getLauncherName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordFingerprintAuthEnabled(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setFingerprintAuthEnabled(Z)V

    :goto_1
    return-void
.end method

.method private onIntelligentAuthEnabled(Z)V
    .locals 2

    const-string v0, "onIntelligentAuthEnabled enabled:"

    const-string v1, "SecretModeSecurityFragment"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuthEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIntelligentFingerprint()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIntelligent()V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setIntelligentAuthEnabled(Z)V

    :goto_1
    return-void
.end method

.method private onIrisAuthEnabled(Z)V
    .locals 2

    const-string v0, "onIrisAuthEnabled enabled:"

    const-string v1, "SecretModeSecurityFragment"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuthEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIrisFingerprint()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIris()V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setIrisAuthEnabled(Z)V

    :goto_1
    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->disableUsePassword()V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->enableBiometrics(I)V

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->getLauncherName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private recordTurnOnBiometricsFromSettings(I)V
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordTurnOnFingerprintFromSettings()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    if-ne p1, p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordTurnOnIrisFromSettings()V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    if-ne p1, p0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordTurnOnFaceFromSettings()V

    goto :goto_0

    :cond_2
    const/16 p0, 0x10

    if-ne p1, p0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordTurnOnIntelligentFromSettings()V

    :cond_3
    :goto_0
    return-void
.end method

.method private registerBiometrics(I)V
    .locals 3

    const-string v0, "registerBiometrics authType:"

    const-string v1, "SecretModeSecurityFragment"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsBiometricsRegistering:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$11;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$11;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;I)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->register(ILcom/sec/android/app/sbrowser/common/model/authentication/FingerprintRegister;Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    return-void
.end method

.method private removePassword()V
    .locals 2

    const-string v0, "SecretModeSecurityFragment"

    const-string v1, "removePassword"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordRemovePasswordFromSettings()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    new-instance v1, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$10;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->removePassword(Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->onFaceAuthEnabled(Z)V

    return-void
.end method

.method private setBiometricDescription(Landroid/text/SpannableString;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsDescription:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;->setMovementMethod(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsDescription:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private setDetailDefault(Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;)V
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

    const-string v2, "key"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result p1

    const-string v2, "sat_level_secret_mode"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "sbrowser.settings.show_fragment_args"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->startActivityPopOver(Landroid/content/Intent;)V

    return-void
.end method

.method private setOnPreferenceChangeListeners()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mChangePassword:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mResetSecretMode:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAntiTrackingSecretModeLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPasswordSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFingerprintSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIrisSupported:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFaceSupported:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFaceSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIntelligentSupported:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportBiometricsWithNonSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSecretDownloadSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mOpenInSecretModeSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAllowScreenshotSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_9
    return-void
.end method

.method private static declared-synchronized setsActivatedTaskId(I)V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->sActivatedTaskId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private showResetDialog()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordShowResetDialogFromSettings()V

    new-instance v0, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f1502e8

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f140bed

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    const v1, 0x7f140bee

    invoke-virtual {v0, v1}, Lm/k;->e(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$4;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V

    const v2, 0x7f1402ac

    invoke-virtual {v0, v2, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$3;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V

    const p0, 0x7f1402ae

    invoke-virtual {v0, p0, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method private showSecretModeInfoDialog()V
    .locals 3

    new-instance v0, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f140e24

    invoke-virtual {v0, v1}, Lm/k;->e(I)V

    const v1, 0x7f140e25

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$7;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V

    const p0, 0x7f14084e

    invoke-virtual {v0, p0, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showSetPasswordDescription()V
    .locals 7

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsMultiBiometricsSupported:Z

    const v1, 0x7f140e2c

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIrisSupported:Z

    if-eqz v0, :cond_1

    const v0, 0x7f140e2f

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFingerprintSupported:Z

    if-eqz v0, :cond_2

    const v0, 0x7f140e2e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFaceSupported:Z

    if-eqz v0, :cond_3

    const v0, 0x7f140e2d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportBiometricsWithNonSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, ""

    :goto_0
    const v1, 0x7f140032

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$6;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v4, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x21

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v4, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0601fb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-direct {v1, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v1, v4, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setBiometricDescription(Landroid/text/SpannableString;)V

    return-void
.end method

.method private showSnackBar(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;II)V

    return-void
.end method

.method private showSnackBarForDesktopMode(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f140bd8

    goto :goto_0

    :cond_0
    const p1, 0x7f140bd7

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->showSnackBar(I)V

    goto :goto_4

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f140bda

    goto :goto_1

    :cond_2
    const p1, 0x7f140bd9

    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->showSnackBar(I)V

    goto :goto_4

    :cond_3
    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f140bd6

    goto :goto_2

    :cond_4
    const p1, 0x7f140bd5

    :goto_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->showSnackBar(I)V

    goto :goto_4

    :cond_5
    const/16 v0, 0x10

    if-ne p1, v0, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f140bdc

    goto :goto_3

    :cond_6
    const p1, 0x7f140bdb

    :goto_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->showSnackBar(I)V

    :cond_7
    :goto_4
    return-void
.end method

.method private showTurnOffDialog(II)V
    .locals 3

    new-instance v0, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->getTurnOffDialogTitle(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lm/k;->e(I)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->getTurnOffDialogMessage(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    const v1, 0x7f1402ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$5;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;II)V

    const p0, 0x7f140e26

    invoke-virtual {v0, p0, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

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

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->onFingerprintAuthEnabled(Z)V

    return-void
.end method

.method private toggleAllowScreenshot(Z)V
    .locals 2

    const-string v0, "toggleAllowScreenshot enabled: "

    const-string v1, "SecretModeSecurityFragment"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAllowScreenshotSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAllowScreenshotEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->updateSecureFlag()V

    return-void
.end method

.method private toggleBiometricsForGED(Z)V
    .locals 2

    const-string v0, "toggleBiometricsForGED enabled:"

    const-string v1, "SecretModeSecurityFragment"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setBiometricsEnabledForGED(Z)V

    return-void
.end method

.method private toggleEnableSecretDownload(Z)V
    .locals 2

    const-string v0, "toggleEnableIncognitoDownload enabled:"

    const-string v1, "SecretModeSecurityFragment"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSecretDownloadSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setEnableSecretDownload(Z)V

    return-void
.end method

.method private toggleFace(Z)V
    .locals 2

    const-string v0, "toggleFace enabled:"

    const-string v1, "SecretModeSecurityFragment"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->showTurnOffDialog(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x10

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->showTurnOffDialog(II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->turnOn(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->turnOff(I)V

    :goto_0
    return-void
.end method

.method private toggleFingerprint(Z)V
    .locals 2

    const-string v0, "toggleFingerprint enabled:"

    const-string v1, "SecretModeSecurityFragment"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->turnOn(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->turnOff(I)V

    :goto_0
    return-void
.end method

.method private toggleIntelligent(Z)V
    .locals 2

    const-string v0, "toggleIntelligent enabled:"

    const-string v1, "SecretModeSecurityFragment"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x10

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->showTurnOffDialog(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFaceSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->showTurnOffDialog(II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->turnOn(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->turnOff(I)V

    :goto_0
    return-void
.end method

.method private toggleIris(Z)V
    .locals 2

    const-string v0, "toggleIris enabled:"

    const-string v1, "SecretModeSecurityFragment"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x4

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFaceSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->showTurnOffDialog(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x10

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->showTurnOffDialog(II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->turnOn(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->turnOff(I)V

    :goto_0
    return-void
.end method

.method private toggleOpenInSecretModeFromOtherApps(Z)V
    .locals 2

    const-string v0, "toggleOpenInSecretModeFromOtherApps enabled: "

    const-string v1, "SecretModeSecurityFragment"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mOpenInSecretModeSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setOpenInSecretModeFromOtherApps(Z)V

    return-void
.end method

.method private togglePassword(Z)V
    .locals 3

    const-string v0, "togglePassword enabled:"

    const-string v1, "SecretModeSecurityFragment"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPasswordSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->createPassword()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->removePassword()V

    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private turnOff(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->turnOffFingerprint()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->turnOffIris()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->turnOffFace()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x10

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->turnOffIntelligent()V

    :cond_3
    :goto_0
    return-void
.end method

.method private turnOffFace()V
    .locals 2

    const-string v0, "SecretModeSecurityFragment"

    const-string v1, "turnOffFace"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordTurnOffFaceFromSettings()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIrisFingerprint()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIntelligentFingerprint()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToFingerprint()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIris()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIntelligent()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToPassword()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFaceSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->updateBiometricDescription()V

    return-void
.end method

.method private turnOffFingerprint()V
    .locals 2

    const-string v0, "SecretModeSecurityFragment"

    const-string v1, "turnOffFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordTurnOffFingerprintFromSettings()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIris()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFaceSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToFace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIntelligent()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToPassword()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->updateBiometricDescription()V

    return-void
.end method

.method private turnOffIntelligent()V
    .locals 2

    const-string v0, "SecretModeSecurityFragment"

    const-string v1, "turnOffIntelligent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordTurnOffIntelligentFromSettings()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIrisFingerprint()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIris()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToFingerprint()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToPassword()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->updateBiometricDescription()V

    return-void
.end method

.method private turnOffIris()V
    .locals 2

    const-string v0, "SecretModeSecurityFragment"

    const-string v1, "turnOffIris"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordTurnOffIrisFromSettings()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIntelligentFingerprint()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToFingerprint()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIntelligent()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToPassword()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->updateBiometricDescription()V

    return-void
.end method

.method private turnOn(I)V
    .locals 2

    const-string v0, "turnOn authType:"

    const-string v1, "SecretModeSecurityFragment"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->recordTurnOnBiometricsFromSettings(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isAuthRegisteredWithCached(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->enableBiometrics(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->showSnackBarForDesktopMode(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f1402c6

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->showSnackBar(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsBiometricsRegistering:Z

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->registerBiometrics(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->onIntelligentAuthEnabled(Z)V

    return-void
.end method

.method private updateAntiTrackingSummary()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAntiTrackingSecretModeLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result v2

    new-instance v3, Landroid/text/SpannableString;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v2

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f06020f

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v3, v4, v0, v2, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAntiTrackingSecretModeLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object v3, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateBiometricDescription()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->showSetPasswordDescription()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsBiometricsSupported:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportBiometricsWithNonSamsungDevice()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsDescription:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportBiometricsWithNonSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isBiometricsEnabledForGED()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    :cond_1
    return-void
.end method

.method private updatePreferencesIfUsePassword()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mChangePassword:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsBiometricsSupported:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsCategory:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsDescription:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFingerprintSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIrisSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFaceSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFaceSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIntelligentSupported:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportBiometricsWithNonSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsCategory:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsDescription:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSecretDownloadSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSecretDownloadSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mOpenInSecretModeSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mOpenInSecretModeSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isOpenInSecretModeFromOtherApps()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    :cond_6
    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->onIrisAuthEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    return-void
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->showSecretModeInfoDialog()V

    return-void
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->turnOff(I)V

    return-void
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->turnOn(I)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setsActivatedTaskId(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const v0, 0x7f140e2b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getAuthManagerDelegate()Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->setDelegate(Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->setResetSecretModeIsProgress(Z)V

    const p1, 0x7f180070

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->isAuthSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFingerprintSupported:Z

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->isAuthSupported(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIrisSupported:Z

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->isAuthSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFaceSupported:Z

    const/16 v3, 0x10

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->isAuthSupported(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIntelligentSupported:Z

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->isAuthRegistered(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFingerprintRegistered:Z

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->isAuthRegistered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIrisRegistered:Z

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->isAuthRegistered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFaceRegistered:Z

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->isAuthRegistered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIntelligentRegistered:Z

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFingerprintSupported:Z

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIrisSupported:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFaceSupported:Z

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIntelligentSupported:Z

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsBiometricsSupported:Z

    if-lt v1, p1, :cond_4

    move p1, v2

    goto :goto_1

    :cond_4
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsMultiBiometricsSupported:Z

    const-string p1, "secret_download_tip_card"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSecretDownloadTip:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;

    const-string p1, "reset_secret_mode"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mResetSecretMode:Landroidx/preference/Preference;

    const-string p1, "change_password"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mChangePassword:Landroidx/preference/Preference;

    const-string p1, "privacy_mode_password"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPasswordSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const-string p1, "privacy_mode_fingerprint"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const-string p1, "privacy_mode_iris"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const-string p1, "privacy_mode_face"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFaceSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const-string p1, "privacy_mode_intelligent_scan"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const-string p1, "privacy_mode_biometrics_for_ged"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const-string p1, "enable_secret_download"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSecretDownloadSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const-string p1, "open_links_from_other_apps_in_secret_mode"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mOpenInSecretModeSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const-string p1, "allow_screenshots_in_secret_mode"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAllowScreenshotSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const-string p1, "privacy_mode_biometrics_description"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsDescription:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    const-string p1, "privacy_category"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsCategory:Landroidx/preference/Preference;

    const v1, 0x7f140e0a

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string p1, "anti_tracking_secret_mode_level"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAntiTrackingSecretModeLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    const-string v1, "SecretModeSecurityFragment"

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->isAntiTrackingEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "[IAT] feature is OFF"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAntiTrackingSecretModeLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAntiTrackingSecretModeLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->updateAntiTrackingSummary()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->hasAuthType()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPasswordSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz p1, :cond_6

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->disableUnusablePreferences()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPasswordSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mChangePassword:Landroidx/preference/Preference;

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mChangePassword:Landroidx/preference/Preference;

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setOnPreferenceChangeListeners()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->migrateDataIfRequired(Landroid/app/Activity;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "startSdpMigration : Return!"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSecretDownloadTip:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->shouldShowSecretDownloadSettingTip()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSecretDownloadTip:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsDescription:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;->setTopMarginEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->initSecretDownloadTip()V

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSecretDownloadTip:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsDescription:Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;->setTopMarginEnabled(Z)V

    :cond_a
    :goto_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public onBrowserPreferenceChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "anti_tracking_secret_mode_level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->updateAntiTrackingSummary()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    if-eqz p1, :cond_0

    const-string v0, "activity_killed"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tab_manager"

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->getLauncherName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    new-instance p1, Lcom/sec/android/app/sbrowser/auth/AuthManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getAuthType()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPasswordSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFaceSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordStatusLogFromSettings(Ljava/lang/String;ZZZZZ)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0b31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mOffsetChangeListener:Lc6/e;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lc6/e;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lw2/A;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lw2/A;->onDestroyView()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mOffsetChangeListener:Lc6/e;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lc6/e;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setsActivatedTaskId(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordActionHomeFromSettings()V

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
    .locals 8

    const/4 v0, 0x1

    const-string v1, "allow_screenshots_in_secret_mode"

    instance-of v2, p2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mLastClickTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x12c

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    return v3

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mLastClickTime:J

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v2, "onPreferenceChange enabled:"

    const-string v4, "SecretModeSecurityFragment"

    invoke-static {v2, v4, p2}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "privacy_mode_password"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "open_links_from_other_apps_in_secret_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "enable_secret_download"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "privacy_mode_fingerprint"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "privacy_mode_biometrics_for_ged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "privacy_mode_intelligent_scan"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "privacy_mode_iris"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    move v2, v0

    goto :goto_0

    :sswitch_8
    const-string v1, "privacy_mode_face"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    move v2, v3

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->togglePassword(Z)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->toggleOpenInSecretModeFromOtherApps(Z)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->toggleEnableSecretDownload(Z)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->toggleAllowScreenshot(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isSecretModeReset()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSecretModeReset(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mResetSecretMode:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->toggleFingerprint(Z)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->toggleBiometricsForGED(Z)V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->toggleIntelligent(Z)V

    goto :goto_1

    :pswitch_7
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->toggleIris(Z)V

    goto :goto_1

    :pswitch_8
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->toggleFace(Z)V

    :cond_b
    :goto_1
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6355c87e -> :sswitch_8
        -0x63542ac8 -> :sswitch_7
        -0x2d968b16 -> :sswitch_6
        -0x14c77e4f -> :sswitch_5
        0x49cee41f -> :sswitch_4
        0x55370f20 -> :sswitch_3
        0x5f93467b -> :sswitch_2
        0x638e393c -> :sswitch_1
        0x70f50140 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPreferenceClick key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecretModeSecurityFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mLastClickTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-gez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mLastClickTime:J

    return v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mLastClickTime:J

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "anti_tracking_secret_mode_level"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "reset_secret_mode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0

    :sswitch_2
    const-string v3, "change_password"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mAntiTrackingSecretModeLevel:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setDetailDefault(Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;)V

    return v0

    :cond_4
    :goto_1
    return v2

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->showResetDialog()Z

    move-result p0

    return p0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->changePassword()Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x392501b6 -> :sswitch_2
        -0x26c9b11e -> :sswitch_1
        0x4789fa4c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordOnResumeFromSettings()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->updateAlteredBiometrics()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPasswordSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->hasAuthType()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingDefaultLevel(Z)I

    move-result v3

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getPrivateAccessTokenPreference(Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSecretModeReset(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mResetSecretMode:Landroidx/preference/Preference;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isSecretModeReset()Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPasswordSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFingerprintSupported:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->isAuthRegistered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFingerprintRegistered:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIrisSupported:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->isAuthRegistered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIrisRegistered:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFaceSupported:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->isAuthRegistered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsFaceRegistered:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFaceSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIntelligentSupported:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->isAuthRegistered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIsIntelligentRegistered:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPasswordSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFaceSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mBiometricsSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mChangePassword:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPasswordSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isPasswordAuthEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->canUseBiometrics()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFingerprintSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuthEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIrisSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisAuthEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mFaceSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFaceAuthEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mIntelligentSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIntelligentAuthEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->setChecked(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Z)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isPasswordAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->updatePreferencesIfUsePassword()V

    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->updateBiometricDescription()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->disableUnusablePreferences()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lw2/A;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string p0, "activity_killed"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
