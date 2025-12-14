.class Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassActivateDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassActivateDialog;->lambda$showSamsungAccountUpdateDialogIfNeeded$1()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassActivateDialog;->lambda$showFindMyMobileDialogIfNeeded$0()V

    return-void
.end method

.method private static synthetic lambda$showFindMyMobileDialogIfNeeded$0()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/FindMyMobileDialog;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/password/FindMyMobileDialog;-><init>()V

    const-string v1, "SamsungPassActivateDialog"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/PreventOverlapDialogUtil;->show(Landroidx/fragment/app/u;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showSamsungAccountUpdateDialogIfNeeded$1()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;-><init>()V

    const-string v1, "SamsungPassActivateDialog"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/PreventOverlapDialogUtil;->show(Landroidx/fragment/app/u;Ljava/lang/String;)V

    return-void
.end method

.method private static showFindMyMobileDialogIfNeeded()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isProvisioned()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SamsungPassActivateDialog"

    if-nez v0, :cond_0

    const-string v0, "isProvisioned false"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0017"

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;F)V

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->hasRegisteredAuthenticator()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "hasRegisteredAuthenticator false"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isFmmLockEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "isFmmLockEnabled false"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/o;-><init>(I)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static showIfNeeded()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassActivateDialog;->showFindMyMobileDialogIfNeeded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassActivateDialog;->showSamsungAccountUpdateDialogIfNeeded()Z

    :cond_1
    return-void
.end method

.method private static showSamsungAccountUpdateDialogIfNeeded()Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isSamsungAccountLogOut()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SamsungPassActivateDialog"

    if-nez v0, :cond_0

    const-string v0, "isSamsungAccountLogOut false"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;->getSamsungAccountLoginRejectCount()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    const-string v0, "samsung account login rejected too much"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/o;-><init>(I)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method
