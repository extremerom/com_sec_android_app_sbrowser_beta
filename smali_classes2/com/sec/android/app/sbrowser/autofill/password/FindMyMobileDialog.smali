.class public Lcom/sec/android/app/sbrowser/autofill/password/FindMyMobileDialog;
.super Landroidx/fragment/app/u;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    return-void
.end method

.method private disableFmmLock(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/autofill/password/i;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/autofill/password/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->disableFmmLock(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/autofill/password/FindMyMobileDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/FindMyMobileDialog;->lambda$disableFmmLock$0(Z)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/autofill/password/FindMyMobileDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/FindMyMobileDialog;->disableFmmLock(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$disableFmmLock$0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/FindMyMobileDialog;->reload()V

    :cond_0
    return-void
.end method

.method private reload()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    const-string v0, "FindMyMobileDialog"

    if-nez p0, :cond_0

    const-string p0, "reload - activity is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "reload - there is no active terrace"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->reload()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result p1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    if-eqz p1, :cond_0

    const v1, 0x7f140daa

    goto :goto_0

    :cond_0
    const v1, 0x7f140da9

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p1, :cond_1

    const p1, 0x7f140db6

    goto :goto_1

    :cond_1
    const p1, 0x7f140db5

    :goto_1
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1402c1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/n;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/n;-><init>(Landroidx/fragment/app/u;I)V

    const p0, 0x7f14084e

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    return-object p0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/u;->dismissAllowingStateLoss()V

    return-void
.end method
