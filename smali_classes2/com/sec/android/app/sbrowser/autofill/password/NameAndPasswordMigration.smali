.class public Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration$NameAndPasswordMigrationListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration$NameAndPasswordMigrationListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;->lambda$migrateAllData$0(Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration$NameAndPasswordMigrationListener;)V

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method private synthetic lambda$migrateAllData$0(Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration$NameAndPasswordMigrationListener;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration$NameAndPasswordMigrationListener;->complete()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;->dismissProgressDialog()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;->showMigrationResult()V

    return-void
.end method

.method private showMigrationResult()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f140565

    goto :goto_0

    :cond_1
    const v0, 0x7f140db7

    :goto_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showProgressDialog()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f140dcf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public migrateAllData(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration$NameAndPasswordMigrationListener;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration$NameAndPasswordMigrationListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;->showProgressDialog()V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;->get(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;->getDataMigrationService()Lcom/sec/android/app/sbrowser/autofill/password/export/DataMigrationService;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p2}, Lcom/sec/android/app/sbrowser/autofill/password/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/export/DataMigrationService;->migrateAllData(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
