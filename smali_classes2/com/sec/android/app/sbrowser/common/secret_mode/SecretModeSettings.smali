.class public Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;
.super Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/constants/preference/PreferenceKeys;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;
    .locals 2

    new-instance v0, Lf1/g;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lf1/g;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    return-object v0
.end method

.method private getPreviousStatus()Ljava/lang/String;
    .locals 2

    const-string v0, "secret_mode_previous_status"

    const-string v1, "none"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isBiometricAuthEnabled(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->canUseBiometrics()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private resetFaceAuthAltered()V
    .locals 1

    const-string v0, "face_altered"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method private resetFingerprintAuthAltered()V
    .locals 1

    const-string v0, "fingerprint_altered"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method private resetIntelligentAuthAltered()V
    .locals 1

    const-string v0, "intelligent_altered"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method private resetIrisAuthAltered()V
    .locals 1

    const-string v0, "iris_altered"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method private resetSecretModeSatSettings()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAntiTrackingLevel(ZI)V

    invoke-static {v0, v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAntiTrackingLevel(ZI)V

    return-void
.end method

.method private setAuthTypeToBiometrics(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->canUseBiometrics()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "privacymodeaccesstype"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setBiometricAuthEnabled(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->canUseBiometrics()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getAuthType()Ljava/lang/String;
    .locals 2

    const-string v0, "privacymodeaccesstype"

    const-string v1, "Empty"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getInstanceId()I
    .locals 2

    const-string v0, "pref_secret_mode_instance_id"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public hasAuthType()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getAuthType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "FaceFingerprint"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1
    const-string v3, "PASSWORD"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_2
    const-string v3, "FingerPrint"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_3
    const-string v3, "Biometrics"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_4
    const-string v3, "Iris"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_5
    const-string v3, "Face"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_6
    const-string v3, "Intelligent"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v2, v0

    goto :goto_0

    :sswitch_7
    const-string v3, "IntelligentFinger"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    :pswitch_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6de0f760 -> :sswitch_7
        -0x58fd09a9 -> :sswitch_6
        0x214a7d -> :sswitch_5
        0x22e833 -> :sswitch_4
        0xe9be6db -> :sswitch_3
        0xfa3a0a4 -> :sswitch_2
        0x772faa9b -> :sswitch_1
        0x7e30c627 -> :sswitch_0
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
    .end packed-switch
.end method

.method public hasBiometricAuth()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getAuthType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "FaceFingerprint"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1
    const-string v3, "FingerPrint"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string v3, "Biometrics"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v3, "Iris"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "Face"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v3, "Intelligent"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_0

    :sswitch_6
    const-string v3, "IntelligentFinger"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    :pswitch_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6de0f760 -> :sswitch_6
        -0x58fd09a9 -> :sswitch_5
        0x214a7d -> :sswitch_4
        0x22e833 -> :sswitch_3
        0xe9be6db -> :sswitch_2
        0xfa3a0a4 -> :sswitch_1
        0x7e30c627 -> :sswitch_0
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
    .end packed-switch
.end method

.method public hasFingerprintAuth()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getAuthType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "FaceFingerprint"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "FingerPrint"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "Biometrics"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0

    :sswitch_3
    const-string v3, "IntelligentFinger"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    :pswitch_0
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6de0f760 -> :sswitch_3
        0xe9be6db -> :sswitch_2
        0xfa3a0a4 -> :sswitch_1
        0x7e30c627 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasIrisAuth()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getAuthType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "Biometrics"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "Iris"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "Intelligent"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0

    :sswitch_3
    const-string v3, "IntelligentFinger"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    :pswitch_0
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6de0f760 -> :sswitch_3
        -0x58fd09a9 -> :sswitch_2
        0x22e833 -> :sswitch_1
        0xe9be6db -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isAllowScreenshotEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAllowScreenshotSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "allow_screenshots_in_secret_mode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isAllowScreenshotSupported()Z
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAuthEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getAuthType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Empty"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isAuthNone()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getAuthType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NONE"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isBiometricsAuthLocked()Z
    .locals 2

    const-string v0, "biometrics_locked"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBiometricsEnabledForGED()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "is_biometrics_changed_by_user"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    const-string v0, "privacy_mode_biometrics_for_ged"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBiometricsUsedBefore()Z
    .locals 2

    const-string v0, "BiometricsUsed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isFaceAuth()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getAuthType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Face"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isFaceAuthAltered()Z
    .locals 2

    const-string v0, "face_altered"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isFaceAuthEnabled()Z
    .locals 1

    const-string v0, "privacy_mode_face"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isBiometricAuthEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFaceFingerprintAuth()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getAuthType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FaceFingerprint"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isFingerprintAuth()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getAuthType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FingerPrint"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isFingerprintAuthAltered()Z
    .locals 2

    const-string v0, "fingerprint_altered"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isFingerprintAuthEnabled()Z
    .locals 1

    const-string v0, "privacy_mode_fingerprint"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isBiometricAuthEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isIntelligentAuth()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getAuthType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Intelligent"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isIntelligentAuthAltered()Z
    .locals 2

    const-string v0, "intelligent_altered"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isIntelligentAuthEnabled()Z
    .locals 1

    const-string v0, "privacy_mode_intelligent_scan"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isBiometricAuthEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isIntelligentFingerprintAuth()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getAuthType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IntelligentFinger"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isIrisAuth()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getAuthType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Iris"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isIrisAuthAltered()Z
    .locals 2

    const-string v0, "iris_altered"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isIrisAuthEnabled()Z
    .locals 1

    const-string v0, "privacy_mode_iris"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isBiometricAuthEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isIrisFingerprintAuth()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getAuthType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Biometrics"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isMultiBiometricsAuth()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisFingerprintAuth()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFaceFingerprintAuth()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIntelligentFingerprintAuth()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isOpenInSecretModeFromOtherApps()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "open_links_from_other_apps_in_secret_mode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isPasswordAuth()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getAuthType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PASSWORD"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isPasswordAuthEnabled()Z
    .locals 2

    const-string v0, "privacy_mode_password"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isPreviousStatusNonSdp()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getPreviousStatus()Ljava/lang/String;

    move-result-object p0

    const-string v0, "non-sdp"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isPreviousStatusNone()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getPreviousStatus()Ljava/lang/String;

    move-result-object p0

    const-string v0, "none"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isPreviousStatusSdp()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getPreviousStatus()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sdp"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isSecretModeInitialShown()Z
    .locals 2

    const-string v0, "do_not_show_incognito_popup_state"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSecretModePreferenceEnabled()Z
    .locals 2

    const-string v0, "secret_mode_enabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isStoredDataErasedForNonSdp()Z
    .locals 2

    const-string v0, "is_erased_stored_data_for_non_sdp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public lockBiometricsAuth()V
    .locals 2

    const-string v0, "biometrics_locked"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public resetAlteredBiometrics()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->resetFingerprintAuthAltered()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->resetIrisAuthAltered()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->resetFaceAuthAltered()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->resetIntelligentAuthAltered()V

    return-void
.end method

.method public resetSecretMode()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->unlockBiometricsAuth()V

    const-string v0, "privacymodeaccesstype"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "do_not_show_incognito_popup_state"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "secret_mode_previous_status"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "BiometricsUsed"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const-string v0, "secret_mode_enabled"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setPasswordAuthEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setFingerprintAuthEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setIrisAuthEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setFaceAuthEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setIntelligentAuthEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setBiometricsEnabledForGED(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setOpenInSecretModeFromOtherApps(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAllowScreenshotEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->resetSecretModeSatSettings()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadSupported()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setEnableSecretDownload(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->resetSecretDownload()V

    return-void
.end method

.method public saveInstanceId(I)V
    .locals 1

    const-string v0, "pref_secret_mode_instance_id"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setAllowScreenshotEnabled(Z)V
    .locals 1

    const-string v0, "allow_screenshots_in_secret_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAuthTypeToFace()V
    .locals 1

    const-string v0, "Face"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToBiometrics(Ljava/lang/String;)V

    return-void
.end method

.method public setAuthTypeToFaceFingerprint()V
    .locals 1

    const-string v0, "FaceFingerprint"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToBiometrics(Ljava/lang/String;)V

    return-void
.end method

.method public setAuthTypeToFingerprint()V
    .locals 1

    const-string v0, "FingerPrint"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToBiometrics(Ljava/lang/String;)V

    return-void
.end method

.method public setAuthTypeToIntelligent()V
    .locals 1

    const-string v0, "Intelligent"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToBiometrics(Ljava/lang/String;)V

    return-void
.end method

.method public setAuthTypeToIntelligentFingerprint()V
    .locals 1

    const-string v0, "IntelligentFinger"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToBiometrics(Ljava/lang/String;)V

    return-void
.end method

.method public setAuthTypeToIris()V
    .locals 1

    const-string v0, "Iris"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToBiometrics(Ljava/lang/String;)V

    return-void
.end method

.method public setAuthTypeToIrisFingerprint()V
    .locals 1

    const-string v0, "Biometrics"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToBiometrics(Ljava/lang/String;)V

    return-void
.end method

.method public setAuthTypeToNone()V
    .locals 2

    const-string v0, "privacymodeaccesstype"

    const-string v1, "NONE"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAuthTypeToPassword()V
    .locals 2

    const-string v0, "privacymodeaccesstype"

    const-string v1, "PASSWORD"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBiometricsEnabledForGED(Z)V
    .locals 2

    const-string v0, "is_biometrics_changed_by_user"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    const-string v0, "privacy_mode_biometrics_for_ged"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBiometricsUsedBefore(Z)V
    .locals 1

    const-string v0, "BiometricsUsed"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDoNotShowSecretModeInitial(Z)V
    .locals 1

    const-string v0, "do_not_show_incognito_popup_state"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setEnableSecretDownload(Z)V
    .locals 1

    const-string v0, "enable_secret_download"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->setEnabledSecretDownload(Z)V

    return-void
.end method

.method public setFaceAuthEnabled(Z)V
    .locals 1

    const-string v0, "privacy_mode_face"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setBiometricAuthEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFingerprintAuthEnabled(Z)V
    .locals 1

    const-string v0, "privacy_mode_fingerprint"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setBiometricAuthEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIntelligentAuthEnabled(Z)V
    .locals 1

    const-string v0, "privacy_mode_intelligent_scan"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setBiometricAuthEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIrisAuthEnabled(Z)V
    .locals 1

    const-string v0, "privacy_mode_iris"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setBiometricAuthEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method public setOpenInSecretModeFromOtherApps(Z)V
    .locals 1

    const-string v0, "open_links_from_other_apps_in_secret_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPasswordAuthEnabled(Z)V
    .locals 1

    const-string v0, "privacy_mode_password"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPreviousStatus(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "sdp"

    goto :goto_0

    :cond_0
    const-string p1, "non-sdp"

    :goto_0
    const-string v0, "secret_mode_previous_status"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSecretModeEnabled(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setSecretModePreferenceEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->setSecretModeEnabled(Z)V

    return-void
.end method

.method public setSecretModePreferenceEnabled(Z)V
    .locals 1

    const-string v0, "secret_mode_enabled"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShouldShowSecretDownloadTip(Z)V
    .locals 1

    const-string v0, "secret_download_tip_card"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setStoredDataErasedForNonSdp(Z)V
    .locals 1

    const-string v0, "is_erased_stored_data_for_non_sdp"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public unlockBiometricsAuth()V
    .locals 2

    const-string v0, "biometrics_locked"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateAlteredBiometrics()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisAuthEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisRegistered()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setIrisAuthEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isPasswordAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToFingerprint()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToPassword()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->resetIrisAuthAltered()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintRegistered()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setFingerprintAuthEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isPasswordAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIris()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToPassword()V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->resetFingerprintAuthAltered()V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFaceAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFaceRegistered()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setFaceAuthEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isPasswordAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToFingerprint()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToPassword()V

    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->resetFaceAuthAltered()V

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIntelligentAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIntelligentRegistered()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setIntelligentAuthEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isPasswordAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToFingerprint()V

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToPassword()V

    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->resetIntelligentAuthAltered()V

    :cond_b
    return-void
.end method

.method public updateBiometrics()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintRegistered()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisRegistered()Z

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFaceRegistered()Z

    move-result v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIntelligentRegistered()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIntelligentFingerprint()V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setFingerprintAuthEnabled(Z)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setIntelligentAuthEnabled(Z)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIntelligent()V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setIntelligentAuthEnabled(Z)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIrisFingerprint()V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setFingerprintAuthEnabled(Z)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setIrisAuthEnabled(Z)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIris()V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setIrisAuthEnabled(Z)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToFaceFingerprint()V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setFingerprintAuthEnabled(Z)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setFaceAuthEnabled(Z)V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToFace()V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setFaceAuthEnabled(Z)V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToFingerprint()V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setFingerprintAuthEnabled(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToPassword()V

    :goto_0
    return-void
.end method
