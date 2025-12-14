.class public Lcom/sec/android/app/sbrowser/donations/DeepSkyDonationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sIsSupported:Ljava/lang/Boolean;


# direct methods
.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/donations/DeepSkyDonationHelper;->lambda$sendUrl$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static donation(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->with(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/DeepSky;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->getDonation()Lcom/samsung/android/app/sdk/deepsky/donation/Donation;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/donation/Donation;->donate(Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "donation"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isUserBinary()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, " - "

    invoke-static {p1, p2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "DeepSkyDonationHelper"

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static isDonationAvailable(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SecureFolderModeUtils;->isSecureFolderMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isActivityStateAvailable(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/donations/DeepSkyDonationHelper;->isOneUISupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDonationSupported()Z
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/donations/DeepSkyDonationHelper;->sIsSupported:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->isSupported(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/sbrowser/donations/DeepSkyDonationHelper;->sIsSupported:Ljava/lang/Boolean;

    return v0
.end method

.method public static isOneUISupported()Z
    .locals 2

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v1, 0x9ca4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$sendUrl$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/donations/DeepSkyDonationHelper;->sendUrlImpl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendUrl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DeepSkyDonationHelper"

    if-nez v0, :cond_0

    const-string p0, "context is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "URL is empty or invalid"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/donations/DeepSkyDonationHelper;->isDonationAvailable(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "donation not available"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/Thread;

    new-instance v1, LJ8/d;

    const/16 v2, 0xb

    invoke-direct {v1, v0, v2, p1, p2}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static sendUrlImpl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/donations/DeepSkyDonationHelper;->isDonationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation$Builder;

    const-string v1, "sec.actions.intent.OPEN_URL"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "webPage.contentUrl"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation$Builder;->addParamDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation$Builder;

    move-result-object p1

    const-string v0, "webPage.name"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation$Builder;->addParamDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation$Builder;->build()Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/donations/DeepSkyDonationHelper;->donation(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;Ljava/lang/String;)V

    return-void
.end method
