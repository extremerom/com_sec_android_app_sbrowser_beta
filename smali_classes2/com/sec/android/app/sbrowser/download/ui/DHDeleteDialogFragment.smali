.class public Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;
.super Landroidx/fragment/app/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;)Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;->mListener:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;)Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;-><init>()V

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;->setListener(Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;)V

    const-string p3, "message"

    const-string v1, "title"

    invoke-static {p3, p0, v1, p1}, LB/e;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "positive_msg"

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
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

.method public getListener()Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;->mListener:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;

    return-object p0
.end method

.method public getPositiveButtonMsg()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "positive_msg"

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/u;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    new-instance p1, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const v1, 0x7f1501c5

    invoke-direct {p1, v0, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "title"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "positive_msg"

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lm/k;->a:Lm/h;

    iput-object v0, v3, Lm/h;->f:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;->mListener:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$2;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;)V

    const v1, 0x7f1402c1

    invoke-virtual {p1, v1, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$1;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;)V

    invoke-virtual {v0, v2, v1}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    const/4 p0, 0x1

    iput-boolean p0, v3, Lm/h;->m:Z

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;->mListener:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;->mListener:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;->onDialogDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/u;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/u;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lm/l;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v1, 0x7f0600fc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment;->mListener:Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;

    return-void
.end method
