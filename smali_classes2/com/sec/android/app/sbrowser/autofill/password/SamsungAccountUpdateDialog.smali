.class public Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;
.super Landroidx/fragment/app/u;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    return-void
.end method

.method public static getSamsungAccountLoginRejectCount()I
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "samsung_pass_acount_login_reject_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;->onCancelClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private increaseSamsungAccountLoginRejectCount()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;->getSamsungAccountLoginRejectCount()I

    move-result p0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/lit8 p0, p0, 0x1

    const-string v1, "samsung_pass_acount_login_reject_count"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic j(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;->lambda$onOkClicked$0(Z)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;->onOkClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic lambda$onOkClicked$0(Z)V
    .locals 2

    const-string v0, "Samsung account is updated : "

    const-string v1, "SamsungAccountUpdateDialog"

    invoke-static {v0, v1, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private onCancelClicked(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;->increaseSamsungAccountLoginRejectCount()V

    return-void
.end method

.method private onOkClicked(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;->resetSamsungAccountLoginRejectCount()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/autofill/password/h;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/h;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->confirmSamsungAccount(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;)V

    return-void
.end method

.method private resetSamsungAccountLoginRejectCount()V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "samsung_pass_acount_login_reject_count"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onCancel(Landroid/content/DialogInterface;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;->increaseSamsungAccountLoginRejectCount()V

    return-void
.end method

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

    const p1, 0x7f140db4

    goto :goto_1

    :cond_1
    const p1, 0x7f140db3

    :goto_1
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/n;-><init>(Landroidx/fragment/app/u;I)V

    const v1, 0x7f1402c1

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/n;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/n;-><init>(Landroidx/fragment/app/u;I)V

    const p0, 0x7f14084e

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    return-object p0
.end method
