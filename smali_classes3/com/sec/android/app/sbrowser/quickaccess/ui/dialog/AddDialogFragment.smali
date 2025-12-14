.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAddDialogBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddDialogBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;->mAddDialogBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddDialogBinding;

    const-string v0, "Wrong view lifecycle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddDialogBinding;->editText:Landroidx/appcompat/widget/AppCompatEditText;

    return-object p0
.end method

.method public getEditTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;->mAddDialogBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddDialogBinding;

    const-string v0, "Wrong view lifecycle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddDialogBinding;->editTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "AddDialogFragment"

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;->onPositiveButtonClicked()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;->onNegativeButtonClicked()V

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

    const v0, 0x7f140b58

    invoke-virtual {p1, v0}, Lm/k;->e(I)V

    const v0, 0x7f140dbb

    invoke-virtual {p1, v0, p0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    const v0, 0x7f1402c1

    invoke-virtual {p1, v0, p0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mDialog:Lm/l;

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

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddDialogBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;->mAddDialogBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddDialogBinding;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddDialogBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/u;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;->mAddDialogBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddDialogBinding;

    return-void
.end method

.method public onNegativeButtonClicked()V
    .locals 1

    const-string p0, "100"

    const-string v0, "1030"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButtonClicked()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getSBrowserViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/Surl;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-direct {v2, v0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->addQuickAccessItems(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;)V

    invoke-virtual {p0}, Landroidx/fragment/app/u;->dismissAllowingStateLoss()V

    const-string p0, "100"

    const-string v0, "1031"

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f14007a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->initializeEditText(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mDialog:Lm/l;

    iget-object p0, p0, Lm/l;->f:Lm/j;

    iput-object p1, p0, Lm/j;->g:Landroid/view/View;

    iput v1, p0, Lm/j;->h:I

    iput-boolean v1, p0, Lm/j;->j:Z

    return-void
.end method
