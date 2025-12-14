.class public Lcom/sec/android/app/sbrowser/main_view/DownloadLanguageDialog;
.super Landroidx/fragment/app/u;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialog:Lm/l;

.field private final mFeature:I

.field private final mLanguage:Ljava/lang/String;


# direct methods
.method private createMessage()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/DownloadLanguageDialog;->mFeature:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/DownloadLanguageDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/DownloadLanguageDialog;->mLanguage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f1400b3

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private createTitle()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/DownloadLanguageDialog;->mFeature:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/DownloadLanguageDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1400b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/DownloadLanguageDialog;->mLanguage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.settings.action.LANGUAGE_PACK_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "package"

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/DownloadLanguageDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "DownloadLanguageDialog"

    const-string p1, "Activity not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/DownloadLanguageDialog;->mDialog:Lm/l;

    invoke-virtual {p0}, Lm/y;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/DownloadLanguageDialog;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/DownloadLanguageDialog;->createTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/DownloadLanguageDialog;->createMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v2

    const v3, 0x7f1501c5

    invoke-direct {v1, v2, v3}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v2, v1, Lm/k;->a:Lm/h;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lm/h;->m:Z

    invoke-virtual {v1, p1}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object p1

    iget-object v1, p1, Lm/k;->a:Lm/h;

    iput-object v0, v1, Lm/h;->f:Ljava/lang/CharSequence;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/main_view/k;-><init>(ILjava/lang/Object;)V

    const v1, 0x7f140fa0

    invoke-virtual {p1, v1, v0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/main_view/k;-><init>(ILjava/lang/Object;)V

    const v1, 0x7f1402c1

    invoke-virtual {p1, v1, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/DownloadLanguageDialog;->mDialog:Lm/l;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/DownloadLanguageDialog;->mDialog:Lm/l;

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/DownloadLanguageDialog;->mDialog:Lm/l;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/DownloadLanguageDialog;->mDialog:Lm/l;

    :cond_0
    return-void
.end method
