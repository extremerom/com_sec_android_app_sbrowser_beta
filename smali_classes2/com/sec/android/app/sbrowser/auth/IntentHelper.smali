.class public Lcom/sec/android/app/sbrowser/auth/IntentHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getAuthType(Landroid/content/Intent;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "auth_type"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getRequestCode(Landroid/content/Intent;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "request_code"

    const/16 v1, 0x78

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static makeAuthLockScreenIntent(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/content/Intent;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportBiometricsWithNonSamsungDevice()Z

    move-result v0

    const-string v1, "com.sec.android.app.sbrowser.auth.password.PasswordAuthLockScreenActivity"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.sec.android.app.sbrowser.auth.ged.NonSamsungAuthLockScreenActivity"

    goto :goto_0

    :cond_1
    if-eq p1, v2, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_5

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12

    if-eq p1, v0, :cond_5

    const-string p0, "makeAuthLockScreenIntent invalid authType:"

    const-string p2, "IntentHelper"

    invoke-static {p1, p0, p2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const-string v1, "com.sec.android.app.sbrowser.auth.intelligent.IntelligentAuthLockScreenActivity"

    goto :goto_0

    :cond_3
    const-string v1, "com.sec.android.app.sbrowser.auth.face.FaceAuthLockScreenActivity"

    goto :goto_0

    :cond_4
    const-string v1, "com.sec.android.app.sbrowser.auth.iris.IrisAuthLockScreenActivity"

    goto :goto_0

    :cond_5
    const-string v1, "com.sec.android.app.sbrowser.auth.fingerprint.FingerprintAuthLockScreenActivity"

    :cond_6
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x20000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "request_code"

    const/16 v1, 0x79

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "auth_type"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_7

    const-string p0, "open_in_secret_mode_url"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    return-object v0
.end method

.method public static makeAuthPromptIntent(Landroid/app/Activity;ILandroid/os/Bundle;)Landroid/content/Intent;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportBiometricsWithNonSamsungDevice()Z

    move-result v0

    const-string v1, "com.sec.android.app.sbrowser.auth.password.PasswordAuthPromptActivity"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "com.sec.android.app.sbrowser.auth.ged.NonSamsungAuthPromptActivity"

    goto :goto_1

    :cond_1
    if-eq p1, v2, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_7

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_7

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12

    if-eq p1, v0, :cond_7

    const-string p0, "makeAuthPromptIntent invalid authType:"

    const-string p2, "IntentHelper"

    invoke-static {p1, p0, p2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.sec.android.app.sbrowser.auth.intelligent.DexIntelligentAuthPromptActivity"

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_3
    const-string v0, "com.sec.android.app.sbrowser.auth.intelligent.IntelligentAuthPromptActivity"

    goto :goto_0

    :cond_4
    const-string v1, "com.sec.android.app.sbrowser.auth.face.FaceAuthPromptActivity"

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "com.sec.android.app.sbrowser.auth.iris.DexIrisAuthPromptActivity"

    goto :goto_0

    :cond_6
    const-string v0, "com.sec.android.app.sbrowser.auth.iris.IrisAuthPromptActivity"

    goto :goto_0

    :cond_7
    const-string v1, "com.sec.android.app.sbrowser.auth.fingerprint.FingerprintAuthPromptActivity"

    :cond_8
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x20000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "request_code"

    const/16 v1, 0x78

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "auth_type"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_9

    const-string p0, "open_in_secret_mode_url"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    return-object v0
.end method

.method public static makeConfirmPasswordIntent(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.sbrowser.auth.password.PasswordAuthConfirmActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "request_code"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "auth_type"

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x20000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static makeCreatePasswordIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.sbrowser.auth.password.CreatePasswordActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x20000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static makeInitialInfoIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.sbrowser.auth.InitialInfoActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x20000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p0, "open_in_secret_mode_url"

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static makeMigrateIntent(Landroid/app/Activity;Z)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "com.sec.android.app.sbrowser.auth.password.PasswordAuthConfirmActivity"

    goto :goto_0

    :cond_0
    const-string v1, "com.sec.android.app.sbrowser.auth.password.PasswordAuthPromptActivity"

    :goto_0
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const/16 p0, 0x7c

    goto :goto_1

    :cond_1
    const/16 p0, 0x7b

    :goto_1
    const-string p1, "request_code"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "auth_type"

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static makeRegisterIntent(I)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    const-string p0, "com.samsung.settings.REGISTER_FINGERPRINT"

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const-string p0, "com.samsung.settings.REGISTER_IRIS"

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    const-string p0, "com.samsung.settings.REGISTER_FACE"

    goto :goto_0

    :cond_2
    const/16 v0, 0x10

    if-ne p0, v0, :cond_3

    const-string p0, "com.samsung.settings.REGISTER_INTELLIGENT_SCAN"

    goto :goto_0

    :cond_3
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_4

    return-object v1

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
