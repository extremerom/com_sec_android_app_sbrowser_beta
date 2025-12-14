.class public Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog;
.super Landroidx/fragment/app/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog;->mListener:Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog$Listener;->onCancel()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog;->mListener:Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog$Listener;->onContinue()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/u;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1405e2

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/tab/a;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/sec/android/app/sbrowser/tab/a;-><init>(Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog;I)V

    const v1, 0x7f1402c1

    invoke-virtual {v0, v1, p1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab/a;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/sec/android/app/sbrowser/tab/a;-><init>(Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog;I)V

    const v1, 0x7f1405e3

    invoke-virtual {v0, v1, p1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    :cond_0
    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->addDialog(Landroid/content/Context;Lm/l;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog;->mListener:Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog$Listener;

    return-void
.end method

.method public show(Landroidx/fragment/app/f0;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1, p1}, LV0/c;->d(Landroidx/fragment/app/f0;Landroidx/fragment/app/f0;)Landroidx/fragment/app/a;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, p2, v1}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {p1, v1, v1}, Landroidx/fragment/app/a;->f(ZZ)I

    return-void
.end method
