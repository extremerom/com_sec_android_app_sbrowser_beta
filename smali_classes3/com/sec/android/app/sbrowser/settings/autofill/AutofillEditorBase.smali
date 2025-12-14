.class public abstract Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;
.super Lw2/A;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBottomButtonView:Landroid/widget/LinearLayout;

.field private mCancelButton:Landroid/widget/TextView;

.field private mCancelMenuItem:Landroid/view/MenuItem;

.field protected mGUID:Ljava/lang/String;

.field protected mIsContentOfItemEquals:Z

.field private mPendingDialog:Lm/l;

.field private mSaveButton:Landroid/widget/TextView;

.field private mSaveMenuItem:Landroid/view/MenuItem;

.field private mSaveShapedTextMenuItem:Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw2/A;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mIsContentOfItemEquals:Z

    return-void
.end method

.method private DisableAutofillAction()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/autofill/AutofillManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->cancel()V

    :cond_1
    return-void
.end method

.method private disableAppBarExpansion()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getAppBarLayout(Landroid/app/Activity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/d;

    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-direct {v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$3;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;)V

    iput-object v2, v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->r:Lcom/google/android/material/appbar/c;

    invoke-virtual {v0, v1}, LR0/d;->b(LR0/c;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->lambda$onClickCancelButton$0()V

    return-void
.end method

.method public static hideSpinnerDropDown(Landroid/widget/Spinner;)V
    .locals 3

    :try_start_0
    const-class v0, Landroid/widget/Spinner;

    const-string v1, "onDetachedFromWindow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->lambda$saveDataIfPossible$1()V

    return-void
.end method

.method private initializeCustomMenuItem(Landroid/view/MenuItem;I)Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;->setText(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f080096

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;->setMenuItemBackgroundResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f0600ec

    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;->setTextColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f0600ed

    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;->setTextColor(I)V

    :goto_0
    new-instance p2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$4;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$4;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;Landroid/view/MenuItem;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->onClickCancelButton()V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->onClickSaveButton()V

    return-void
.end method

.method private synthetic lambda$onClickCancelButton$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$saveDataIfPossible$1()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->saveDataIfPossible()V

    return-void
.end method

.method private onClickCancelButton()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->cancelItemFromButtonForSALogging()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/autofill/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/autofill/d;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;I)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->DisableAutofillAction()V

    return-void
.end method

.method private onClickSaveButton()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->saveItemFromButtonForSALogging()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->saveDataIfPossible()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->DisableAutofillAction()V

    return-void
.end method

.method private saveDataIfPossible()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->setSaveButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->saveEntry()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->forcehideKeyboard(Landroid/app/Activity;)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/autofill/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/autofill/d;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;I)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mIsContentOfItemEquals:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->showAlreadyExistedMessageSbar()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mIsContentOfItemEquals:Z

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->setSaveButtonEnabled(Z)V

    return-void
.end method

.method private showAlreadyExistedMessageSbar()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v1}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return-void
.end method

.method private updateMenuItemVisibility()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mCancelMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mSaveMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mBottomButtonView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070144

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mBottomButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mSaveButton:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->setSaveButtonEnabled(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public abstract cancelItemFromButtonForSALogging()V
.end method

.method public abstract cancelItemFromPopupForSALogging()V
.end method

.method public abstract dialogMessageFromEditor()I
.end method

.method public abstract discardItemFromPoupForSALogging()V
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mSaveButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mPendingDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lm/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->dialogMessageFromEditor()I

    move-result v1

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$7;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;)V

    const v2, 0x7f1400ff

    invoke-virtual {v0, v2, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$6;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;)V

    const v2, 0x7f1400fe

    invoke-virtual {v0, v2, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$5;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;)V

    const v2, 0x7f1400fd

    invoke-virtual {v0, v2, v1}, Lm/k;->c(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mPendingDialog:Lm/l;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mPendingDialog:Lm/l;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->forcehideKeyboard(Landroid/app/Activity;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lw2/A;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->updateMenuItemVisibility()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f100001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mActivity:Landroid/app/Activity;

    invoke-super {p0, p1, p2, p3}, Lw2/A;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0e003e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7f0b0493

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f080080

    invoke-static {p2, p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawableResource(Landroid/content/Context;Landroid/view/View;I)V

    :cond_0
    const p1, 0x7f0b007d

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mBottomButtonView:Landroid/widget/LinearLayout;

    const p1, 0x7f0b0204

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mCancelButton:Landroid/widget/TextView;

    const p1, 0x7f0b0a43

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mSaveButton:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->updateMenuItemVisibility()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->getGlobalFontSize()I

    move-result p1

    const/4 p2, 0x4

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c7a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mCancelButton:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {p2, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mSaveButton:Landroid/widget/TextView;

    invoke-virtual {p2, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mCancelButton:Landroid/widget/TextView;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$1;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mSaveButton:Landroid/widget/TextView;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$2;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase$2;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->setSaveButtonEnabled(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "guid"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->shouldUseDarkStatusBar()Z

    move-result p2

    if-nez p2, :cond_3

    const p2, 0x7f060224

    goto :goto_0

    :cond_3
    const p2, 0x7f060d8d

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->disableAppBarExpansion()V

    return-object p3
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mPendingDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/y;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mSaveShapedTextMenuItem:Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->onClickSaveButton()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->onClickCancelButton()V

    :cond_0
    :goto_0
    return v0

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->onBackPressed()V

    return v0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f0b0122 -> :sswitch_1
        0x7f0b0123 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f0b0122

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mCancelMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f140251

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->initializeCustomMenuItem(Landroid/view/MenuItem;I)Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;

    const v0, 0x7f0b0123

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mSaveMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f14025c

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->initializeCustomMenuItem(Landroid/view/MenuItem;I)Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mSaveShapedTextMenuItem:Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->updateMenuItemVisibility()V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public requestFocusHideKeyboardForSpinner(Landroid/widget/Spinner;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->forcehideKeyboard(Landroid/app/Activity;)Z

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public abstract saveEntry()Z
.end method

.method public abstract saveItemFromButtonForSALogging()V
.end method

.method public abstract saveItemFromPopupForSALogging()V
.end method

.method public setSaveButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mSaveButton:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mSaveShapedTextMenuItem:Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/ShapedTextMenuItem;->setEnabled(Z)V

    :cond_1
    return-void
.end method
