.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment$RenameFinishedListener;
    }
.end annotation


# instance fields
.field private mRenameDialogBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessRenameDialogBinding;

.field private mRenameFinishedListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment$RenameFinishedListener;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public canSaveInputData()Z
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->canSaveInputData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;->mRenameDialogBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessRenameDialogBinding;

    const-string v0, "Wrong view lifecycle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessRenameDialogBinding;->editText:Landroidx/appcompat/widget/AppCompatEditText;

    return-object p0
.end method

.method public getEditTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;->mRenameDialogBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessRenameDialogBinding;

    const-string v0, "Wrong view lifecycle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessRenameDialogBinding;->editTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "RenameDialogFragment"

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;->onPositiveButtonClicked()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;->onNegativeButtonClicked()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p1, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const v1, 0x7f1501c5

    invoke-direct {p1, v0, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v0, p1, Lm/k;->a:Lm/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lm/h;->m:Z

    const v0, 0x7f140b59

    invoke-virtual {p1, v0}, Lm/k;->e(I)V

    const v0, 0x7f140be5

    invoke-virtual {p1, v0, p0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    const v0, 0x7f1402c1

    invoke-virtual {p1, v0, p0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mDialog:Lm/l;

    iget-object p1, p1, Lm/l;->f:Lm/j;

    iput-boolean v1, p1, Lm/j;->i:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mDialog:Lm/l;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setAnchor(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mDialog:Lm/l;

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessRenameDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/QuickaccessRenameDialogBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;->mRenameDialogBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessRenameDialogBinding;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessRenameDialogBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/u;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;->mRenameDialogBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessRenameDialogBinding;

    return-void
.end method

.method public onNegativeButtonClicked()V
    .locals 1

    const-string p0, "100"

    const-string v0, "1041"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;->mRenameFinishedListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment$RenameFinishedListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;->mRenameFinishedListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment$RenameFinishedListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment$RenameFinishedListener;->onRenameFinished(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/u;->dismissAllowingStateLoss()V

    const-string p0, "100"

    const-string v0, "1042"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;->mTitle:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->initializeEditText(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mDialog:Lm/l;

    iget-object p0, p0, Lm/l;->f:Lm/j;

    iput-object p1, p0, Lm/j;->g:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Lm/j;->h:I

    iput-boolean p1, p0, Lm/j;->j:Z

    return-void
.end method

.method public show(Lm/n;Landroid/view/View;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment$RenameFinishedListener;)V
    .locals 0
    .param p1    # Lm/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment$RenameFinishedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;->mRenameFinishedListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment$RenameFinishedListener;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->show(Lm/n;Landroid/view/View;)V

    return-void
.end method
