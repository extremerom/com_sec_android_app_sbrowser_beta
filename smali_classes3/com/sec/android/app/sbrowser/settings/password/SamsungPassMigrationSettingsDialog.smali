.class public Lcom/sec/android/app/sbrowser/settings/password/SamsungPassMigrationSettingsDialog;
.super Landroidx/fragment/app/u;
.source "SourceFile"


# instance fields
.field private mListener:Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration$NameAndPasswordMigrationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/password/SamsungPassMigrationSettingsDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/password/SamsungPassMigrationSettingsDialog;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/SamsungPassMigrationSettingsDialog;->mListener:Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration$NameAndPasswordMigrationListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/SamsungPassMigrationSettingsDialog;->mListener:Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration$NameAndPasswordMigrationListener;

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;->migrateAllData(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration$NameAndPasswordMigrationListener;)V

    const-string p0, "511"

    const-string p1, "5118"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const-string p1, "SamsungPassMigrationSettingDialog"

    const-string v0, "onCreateDialog"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration$NameAndPasswordMigrationListener;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/SamsungPassMigrationSettingsDialog;->mListener:Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration$NameAndPasswordMigrationListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCreateDialog: ClassCastException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/SamsungPassMigrationSettingsDialog;->mListener:Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration$NameAndPasswordMigrationListener;

    :goto_0
    new-instance p1, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f1501c5

    invoke-direct {p1, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1407c5

    goto :goto_1

    :cond_0
    const v1, 0x7f1407ca

    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f1407c4

    goto :goto_2

    :cond_1
    const v2, 0x7f1407c9

    :goto_2
    invoke-virtual {p1, v1}, Lm/k;->e(I)V

    invoke-virtual {p1, v2}, Lm/k;->a(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/password/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/password/b;-><init>(Landroidx/fragment/app/Fragment;I)V

    const p0, 0x7f1402ad

    invoke-virtual {p1, p0, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    const v1, 0x7f1402ac

    invoke-virtual {p0, v1, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    return-object p0
.end method
