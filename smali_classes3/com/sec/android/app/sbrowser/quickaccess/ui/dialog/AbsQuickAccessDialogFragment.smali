.class public abstract Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;
.super Landroidx/fragment/app/u;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;


# instance fields
.field private mAnchorView:Landroid/view/View;

.field protected mDialog:Lm/l;

.field private mEmojiTextError:Z

.field private mIsShowing:Z

.field private mMaxLengthTextError:Z

.field private mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

.field private mShownByClient:Z

.field private mTextMaxLength:I

.field private mViewModel:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    return-void
.end method

.method private addSecretModeChangedListener(Lm/n;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->addListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    return-void
.end method

.method private getEmojiExcludeFilter()Landroid/text/InputFilter;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;)V

    return-object v0
.end method

.method private getInputFilters()[Landroid/text/InputFilter;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mTextMaxLength:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getEmojiExcludeFilter()Landroid/text/InputFilter;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p0, v0, [Landroid/text/InputFilter;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/InputFilter;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-array p0, v0, [Landroid/text/InputFilter;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mEmojiTextError:Z

    return p0
.end method

.method private isMaxTextEntered()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mTextMaxLength:I

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isTextEntered()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mMaxLengthTextError:Z

    return p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mTextMaxLength:I

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mEmojiTextError:Z

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mMaxLengthTextError:Z

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->isMaxTextEntered()Z

    move-result p0

    return p0
.end method

.method private removeSecretModeChangedListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->removeListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canSaveInputData()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->isTextEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->isMaxTextEntered()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method public abstract getEditText()Landroid/widget/EditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getEditTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getFragmentTag()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public getSBrowserViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mViewModel:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    if-nez v0, :cond_0

    new-instance v0, LZ3/x;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const-string v2, "Wrong lifecycle"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/y0;

    invoke-direct {v0, v1}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    invoke-virtual {v0, v1}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mViewModel:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mViewModel:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    return-object p0
.end method

.method public initializeEditText(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mMaxLengthTextError:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mEmojiTextError:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mTextMaxLength:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    const p3, 0x7f06088d

    goto :goto_0

    :cond_3
    const p3, 0x7f06088c

    :goto_0
    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHintTextColor(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSaveEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getInputFilters()[Landroid/text/InputFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment$2;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment$3;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment$3;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const p2, 0x7f060d9f

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_4
    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mIsShowing:Z

    return p0
.end method

.method public isShownByClient()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mShownByClient:Z

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/u;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/u;->setShowsDialog(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getEditTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->removeSecretModeChangedListener()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mIsShowing:Z

    return-void
.end method

.method public abstract onPositiveButtonClicked()V
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->isShownByClient()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/u;->dismissAllowingStateLoss()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->updateSoftInputMode(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mDialog:Lm/l;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->canSaveInputData()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onSecretModeChanged(ZLandroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/u;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public onSecureDataUnlocked()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/u;->onStart()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mDialog:Lm/l;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mDialog:Lm/l;

    invoke-virtual {p0, v1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public show(Lm/n;Landroid/view/View;)V
    .locals 2
    .param p1    # Lm/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessActivityUtils;->isActivityInvalidState(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AbsQuickAccessDialogFragment"

    const-string p1, "Can\'t show dialog in invalid state"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mShownByClient:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mIsShowing:Z

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->addSecretModeChangedListener(Lm/n;)V

    invoke-virtual {p1}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p1

    invoke-static {p1, p1}, LV0/c;->d(Landroidx/fragment/app/f0;Landroidx/fragment/app/f0;)Landroidx/fragment/app/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0, p2, v0}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/a;->f(ZZ)I

    return-void
.end method

.method public updateSoftInputMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    or-int/lit8 p1, p1, 0x10

    goto :goto_1

    :cond_1
    or-int/lit8 p1, p1, 0x20

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mDialog:Lm/l;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->mDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
