.class public Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;
.super Landroidx/fragment/app/u;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog$EventListener;
    }
.end annotation


# instance fields
.field protected mDialog:Lm/l;

.field private mDismissCallBackIgnore:Z

.field private mEventListener:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog$EventListener;

.field protected mIsShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    return-void
.end method


# virtual methods
.method public getDialogMessage()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "message"

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDialogTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "title"

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public ignoreDismiss(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->mDismissCallBackIgnore:Z

    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->mIsShowing:Z

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->onPositiveButtonClicked()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->onNegativeButtonClicked()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "SitesConfirmDeleteDialog"

    const-string p1, "activity is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const v1, 0x7f1502e8

    invoke-direct {p1, v0, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v0, p1, Lm/k;->a:Lm/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lm/h;->m:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lm/k;->a:Lm/h;

    iput-object v0, v1, Lm/h;->f:Ljava/lang/CharSequence;

    const v0, 0x7f140433

    invoke-virtual {p1, v0, p0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    const v0, 0x7f1402c1

    invoke-virtual {p1, v0, p0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->mDialog:Lm/l;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->mDialog:Lm/l;

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->mIsShowing:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->mDialog:Lm/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->mDialog:Lm/l;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->mEventListener:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog$EventListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->mDismissCallBackIgnore:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog$EventListener;->onDialogDismissed()V

    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->mDismissCallBackIgnore:Z

    return-void
.end method

.method public onNegativeButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->mEventListener:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog$EventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog$EventListener;->onCancelButtonClicked()V

    :cond_0
    return-void
.end method

.method public onPositiveButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->mEventListener:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog$EventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog$EventListener;->onDeleteButtonClicked()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog$EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->mEventListener:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog$EventListener;

    return-void
.end method

.method public show(Landroidx/fragment/app/J;)V
    .locals 3
    .param p1    # Landroidx/fragment/app/J;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const-string v1, "SitesConfirmDeleteDialog"

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p1

    invoke-static {p1, p1}, LV0/c;->d(Landroidx/fragment/app/f0;Landroidx/fragment/app/f0;)Landroidx/fragment/app/a;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p0, v1, v2}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :try_start_0
    const-string v0, " fragment commit "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroidx/fragment/app/a;->e()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, " IllegalStateException "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2, v2}, Landroidx/fragment/app/a;->f(ZZ)I

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->mIsShowing:Z

    return-void

    :cond_1
    :goto_1
    const-string p0, "Can\'t show dialog in invalid state"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
