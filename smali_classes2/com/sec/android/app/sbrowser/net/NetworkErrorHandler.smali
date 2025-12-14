.class public Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ERR_ABORTED:I = -0x3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ERR_TIMED_OUT:I = -0x7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static sIsPDPResetPopupShown:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private showDialogPDPResetInRoaming()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "si__NetworkErrorHandler"

    const-string v0, "Unable to get main activity"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Lm/k;

    const v2, 0x7f1501c5

    invoke-direct {v1, v0, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f140bf4

    invoke-virtual {v1, v2}, Lm/k;->a(I)V

    new-instance v2, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler$1;-><init>(Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;Landroid/app/Activity;)V

    const p0, 0x7f1402ad

    invoke-virtual {v1, p0, v2}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    const v0, 0x7f1402ac

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showRoamingNetworkErrorPopup()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;->isFlightMode()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "si__NetworkErrorHandler"

    if-eqz v0, :cond_0

    const-string p0, "showRoamingNetworkErrorPopup() - isFlightMode is true"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;->sIsPDPResetPopupShown:Z

    if-eqz v0, :cond_1

    const-string p0, "showRoamingNetworkErrorPopup() - PDP reset popup was already shown"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;->isFlightMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;->isMobileDataOff()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;->isDataRoamingOff()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "showRoamingNetworkErrorPopup() - PDP reset popup creating"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;->showDialogPDPResetInRoaming()V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;->sIsPDPResetPopupShown:Z

    return p0

    :cond_2
    const-string p0, "showRoamingNetworkErrorPopup() - Not in roaming area"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public getSIsPDPResetPopupShown()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-boolean p0, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;->sIsPDPResetPopupShown:Z

    return p0
.end method

.method public getSdkVersion()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    return p0
.end method

.method public handleNetworkError(I)V
    .locals 2

    const-string v0, "handleNetworkError called"

    const-string v1, "si__NetworkErrorHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNoSimcard()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Unable to get main activity"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSkc()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, -0x89

    if-eq p1, v0, :cond_2

    const/16 v0, -0x76

    if-eq p1, v0, :cond_2

    const/16 v0, -0xf

    if-eq p1, v0, :cond_2

    const/4 v0, -0x7

    if-eq p1, v0, :cond_2

    const/16 v0, -0x6d

    if-eq p1, v0, :cond_2

    const/16 v0, -0x6c

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :cond_2
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;->showRoamingNetworkErrorPopup()Z

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x6a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isDataRoamingOff()Z
    .locals 4

    const-string v0, "si__NetworkErrorHandler"

    const-string v1, "isDataRoamingOff, return value: "

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "data_roaming"

    invoke-static {p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    const/4 v3, 0x1

    if-eq p0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    const-string p0, "isDataRoamingOff, Exception, return value: false"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isFlightMode()Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p0, "isFlightMode, return value: "

    const-string v0, "si__NetworkErrorHandler"

    invoke-static {p0, v0, v1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public isInternetDisconnected(I)Z
    .locals 0

    const/16 p0, -0x6a

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMobileDataOff()Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mobile_data"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    move v1, v0

    :cond_0
    const-string p0, "isMobileDataOff, return value: "

    const-string v0, "si__NetworkErrorHandler"

    invoke-static {p0, v0, v1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public isNetworkRoaming()Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/net/NetworkErrorHandler;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p0

    const-string v0, "isNetworkRoaming, return value: "

    const-string v1, "si__NetworkErrorHandler"

    invoke-static {v0, v1, p0}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method
