.class public Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static recordAboutSecretModeFromInitialInfo()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isStoredDataErasedForNonSdp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "412"

    goto :goto_0

    :cond_0
    const-string v0, "411"

    :goto_0
    const-string v1, "4037"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordAboutSecretModeFromSettings()V
    .locals 2

    const-string v0, "514"

    const-string v1, "5174"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordActionHomeFromSettings()V
    .locals 2

    const-string v0, "514"

    const-string v1, "5128"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordBackPressedFromInitialInfo()V
    .locals 2

    const-string v0, "405"

    const-string v1, "4016"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordBiometricsCheckBoxChangedFromCreatePassword(Z)V
    .locals 3

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p0, "515"

    const-string v2, "5133"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static recordBiometricsCheckBoxChangedFromPasswordAuth(ZI)V
    .locals 5

    const/16 v0, 0x78

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    if-ne p1, v0, :cond_1

    if-eqz p0, :cond_0

    move-wide v1, v3

    :cond_0
    const-string p0, "401"

    const-string p1, "4021"

    invoke-static {p0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x79

    if-ne p1, v0, :cond_3

    if-eqz p0, :cond_2

    move-wide v1, v3

    :cond_2
    const-string p0, "203"

    const-string p1, "2522"

    invoke-static {p0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static recordCancelButtonClickFromBiometricAuth(I)V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "401"

    if-ne p0, v0, :cond_0

    const-string p0, "4023"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const-string p0, "4029"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    const-string v2, "4033"

    if-ne p0, v0, :cond_2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    const-string p0, "2545"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static recordCancelButtonClickFromCreatePassword()V
    .locals 2

    const-string v0, "515"

    const-string v1, "5134"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordCancelButtonClickFromPasswordAuth()V
    .locals 2

    const-string v0, "524"

    const-string v1, "5158"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordChangePasswordFromSettings(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "514"

    const-string v2, "5130"

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tab_manager"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const-wide/16 v1, -0x1

    const-string v3, "0222"

    if-eqz p0, :cond_0

    const-string p0, "Tab change password"

    invoke-static {v0, v3, p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string p0, "Settings change password"

    invoke-static {v0, v3, p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public static recordCreatePasswordFromInitialInfo()V
    .locals 2

    const-string v0, "405"

    const-string v1, "4019"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordCreatePasswordFromSettings(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x1

    const-string v3, "514"

    const-string v4, "5129"

    invoke-static {v3, v4, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v4, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;F)V

    const-string v1, "tab_manager"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const-wide/16 v1, -0x1

    const-string v3, "0173"

    if-eqz p0, :cond_0

    const-string p0, "Tab use password"

    invoke-static {v0, v3, p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string p0, "Settings use password"

    invoke-static {v0, v3, p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public static recordDisableButtonClickFromBiometricAuth(Z)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object v0

    const-string v1, "203"

    if-eqz p0, :cond_0

    const-string p0, "2531"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuth()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "2525"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisAuth()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "2527"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisFingerprintAuth()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "2529"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFaceAuth()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "2539"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIntelligentAuth()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "2541"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static recordDisableUsePasswordClickFromSettings()V
    .locals 2

    const-string v0, "524"

    const-string v1, "5160"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordFingerprintAuthEnabled(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tab_manager"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const-wide/16 v1, -0x1

    const-string v3, "0213"

    if-eqz p0, :cond_0

    const-string p0, "Tab fingerprints"

    invoke-static {v0, v3, p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string p0, "Settings fingerprints"

    invoke-static {v0, v3, p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public static recordLaunchAuthLockScreen()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-wide/16 v2, -0x1

    const-string v4, "0154"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static recordNextButtonClickFromCreatePassword(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const-string p0, "5135"

    goto :goto_0

    :cond_0
    const-string p0, "5144"

    :goto_0
    const-string v0, "515"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordNextButtonClickFromPasswordAuth()V
    .locals 2

    const-string v0, "524"

    const-string v1, "5159"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordNoPasswordFromInitialInfo()V
    .locals 2

    const-string v0, "405"

    const-string v1, "4018"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordOnAuthSuccessFromBiometricAuth(II)V
    .locals 2

    const/16 v0, 0x78

    if-ne p0, v0, :cond_4

    const/4 p0, 0x2

    const-string v0, "4030"

    const-string v1, "401"

    if-ne p1, p0, :cond_0

    const-string p0, "1"

    invoke-static {v1, v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    if-ne p1, p0, :cond_1

    const-string p0, "2"

    invoke-static {v1, v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    if-ne p1, p0, :cond_2

    const-string p0, "3"

    invoke-static {v1, v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 p0, 0x10

    if-ne p1, p0, :cond_3

    const-string p0, "4"

    invoke-static {v1, v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 p0, 0x20

    if-ne p1, p0, :cond_4

    const-string p0, "5"

    invoke-static {v1, v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static recordOnResumeFromBiometricAuth(I)V
    .locals 1

    const/16 v0, 0x78

    if-ne p0, v0, :cond_0

    const-string p0, "401"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x79

    if-ne p0, v0, :cond_1

    const-string p0, "203"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static recordOnResumeFromCreatePassword()V
    .locals 1

    const-string v0, "515"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public static recordOnResumeFromInitialInfo()V
    .locals 1

    const-string v0, "405"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public static recordOnResumeFromPasswordAuth(I)V
    .locals 1

    const/16 v0, 0x78

    if-eq p0, v0, :cond_1

    const/16 v0, 0x79

    if-eq p0, v0, :cond_0

    const-string p0, "524"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "203"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "401"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static recordOnResumeFromSettings()V
    .locals 1

    const-string v0, "514"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public static recordRemovePasswordFromSettings()V
    .locals 4

    const-wide/16 v0, 0x0

    const-string v2, "514"

    const-string v3, "5129"

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;F)V

    return-void
.end method

.method public static recordResetButtonClickFromBiometricAuth(I)V
    .locals 1

    const/16 v0, 0x78

    if-ne p0, v0, :cond_0

    const-string p0, "401"

    const-string v0, "4022"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x79

    if-ne p0, v0, :cond_1

    const-string p0, "203"

    const-string v0, "2530"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static recordResetButtonClickFromPasswordAuth(I)V
    .locals 1

    const/16 v0, 0x78

    if-ne p0, v0, :cond_0

    const-string p0, "401"

    const-string v0, "4022"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x79

    if-ne p0, v0, :cond_1

    const-string p0, "203"

    const-string v0, "2530"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static recordResetDialogCancel(I)V
    .locals 1

    const/16 v0, 0x79

    if-ne p0, v0, :cond_0

    const-string p0, "203"

    const-string v0, "2532"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x78

    if-ne p0, v0, :cond_1

    const-string p0, "401"

    const-string v0, "4034"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static recordResetDialogCancelFromSettings()V
    .locals 2

    const-string v0, "514"

    const-string v1, "5172"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordResetDialogDismiss(I)V
    .locals 1

    const/16 v0, 0x79

    if-ne p0, v0, :cond_0

    const-string p0, "203"

    const-string v0, "2533"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static recordResetDialogOk(I)V
    .locals 1

    const/16 v0, 0x78

    if-ne p0, v0, :cond_0

    const-string p0, "401"

    const-string v0, "4035"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static recordResetDialogOkFromSettings()V
    .locals 2

    const-string v0, "514"

    const-string v1, "5173"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordShowResetDialogFromSettings()V
    .locals 2

    const-string v0, "514"

    const-string v1, "5171"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordStatusLogFromSettings(Ljava/lang/String;ZZZZZ)V
    .locals 1

    const-string v0, "0016"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "5129"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    const-string p0, "5131"

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    const-string p0, "5132"

    invoke-static {p0, p3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    const-string p0, "2550"

    invoke-static {p0, p4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    const-string p0, "2551"

    invoke-static {p0, p5}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    return-void
.end method

.method public static recordTurnOffFaceFromSettings()V
    .locals 4

    const-string v0, "2548"

    const-wide/16 v1, 0x0

    const-string v3, "514"

    invoke-static {v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    const-string v0, "2550"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;F)V

    return-void
.end method

.method public static recordTurnOffFingerprintFromSettings()V
    .locals 4

    const-wide/16 v0, 0x0

    const-string v2, "514"

    const-string v3, "5131"

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;F)V

    return-void
.end method

.method public static recordTurnOffIntelligentFromSettings()V
    .locals 4

    const-string v0, "2549"

    const-wide/16 v1, 0x0

    const-string v3, "514"

    invoke-static {v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    const-string v0, "2551"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;F)V

    return-void
.end method

.method public static recordTurnOffIrisFromSettings()V
    .locals 4

    const-wide/16 v0, 0x0

    const-string v2, "514"

    const-string v3, "5132"

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;F)V

    return-void
.end method

.method public static recordTurnOnFaceFromSettings()V
    .locals 4

    const-string v0, "2548"

    const-wide/16 v1, 0x1

    const-string v3, "514"

    invoke-static {v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    const-string v0, "2550"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;F)V

    return-void
.end method

.method public static recordTurnOnFingerprintFromSettings()V
    .locals 4

    const-wide/16 v0, 0x1

    const-string v2, "514"

    const-string v3, "5131"

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;F)V

    return-void
.end method

.method public static recordTurnOnIntelligentFromSettings()V
    .locals 4

    const-string v0, "2549"

    const-wide/16 v1, 0x1

    const-string v3, "514"

    invoke-static {v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    const-string v0, "2551"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;F)V

    return-void
.end method

.method public static recordTurnOnIrisFromSettings()V
    .locals 4

    const-wide/16 v0, 0x1

    const-string v2, "514"

    const-string v3, "5132"

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;F)V

    return-void
.end method

.method public static recordUsePasswordClickFromBiometricAuth(II)V
    .locals 5

    const/4 v0, 0x2

    const-string v1, "203"

    const/16 v2, 0x79

    const-string v3, "401"

    const/16 v4, 0x78

    if-ne p1, v0, :cond_1

    if-ne p0, v4, :cond_0

    const-string p0, "4024"

    invoke-static {v3, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p0, v2, :cond_9

    const-string p0, "2524"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    if-ne p0, v2, :cond_2

    const-string p0, "2526"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne p0, v4, :cond_9

    const-string p0, "4028"

    invoke-static {v3, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    if-ne p0, v2, :cond_4

    const-string p0, "2528"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-ne p0, v4, :cond_9

    const-string p0, "4032"

    invoke-static {v3, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    if-ne p0, v2, :cond_6

    const-string p0, "2538"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-ne p0, v4, :cond_9

    const-string p0, "2544"

    invoke-static {v3, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/16 v0, 0x10

    if-ne p1, v0, :cond_9

    if-ne p0, v2, :cond_8

    const-string p0, "2540"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    if-ne p0, v4, :cond_9

    const-string p0, "2546"

    invoke-static {v3, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public static recordVerifyWithNoPassword()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "no password"

    const-wide/16 v2, -0x1

    const-string v4, "0195"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
