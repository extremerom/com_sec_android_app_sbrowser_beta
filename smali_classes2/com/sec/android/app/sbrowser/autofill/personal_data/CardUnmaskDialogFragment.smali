.class public Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;
.super Landroidx/fragment/app/u;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$CalendarTask;,
        Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$Callback;
    }
.end annotation


# instance fields
.field private mAlertDialog:Lm/l;

.field private mCVCContainer:Landroid/widget/LinearLayout;

.field private mCardUnmaskInput:Landroid/widget/EditText;

.field private mCurrentFocusedEditText:Landroid/widget/EditText;

.field private mDelegate:Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;

.field private mDynamicSpace:Landroid/view/View;

.field private mErrorMessage:Landroid/widget/TextView;

.field private mExpirationContainer:Landroid/view/View;

.field final mHandler:Landroid/os/Handler;

.field private mInputContainer:Landroid/widget/LinearLayout;

.field private mInstructions:Landroid/widget/TextView;

.field private mMonthInput:Landroid/widget/EditText;

.field private mNewCardLink:Landroid/widget/TextView;

.field private mNoRetryErrorMessage:Landroid/widget/TextView;

.field private mShouldRequestExpirationDate:Ljava/lang/Boolean;

.field private mTabManagerEventListener:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

.field private mThisMonth:I

.field private mThisYear:I

.field private mValidationWaitsForCalendarTask:Z

.field private mYearInput:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mDelegate:Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mThisYear:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mThisMonth:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private addTabManagerEventListener()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mTabManagerEventListener:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$5;-><init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mTabManagerEventListener:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->addListener(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private adjustInputField()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mExpirationContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mCVCContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-le v1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mInputContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mInputContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_0
    return-void
.end method

.method private adjustInstructionBottomMargin()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mInstructions:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f07067f

    goto :goto_0

    :cond_0
    const v2, 0x7f07067e

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mInstructions:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private areInputsValid(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$Callback;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mShouldRequestExpirationDate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mThisYear:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mThisMonth:I

    if-ne v0, v3, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mMonthInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v2, :cond_4

    const/16 v2, 0xc

    if-le v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->getFourDigitYear()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mThisYear:I

    if-lt v2, v3, :cond_3

    add-int/lit8 v4, v3, 0x28

    if-le v2, v4, :cond_2

    goto :goto_0

    :cond_2
    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mThisMonth:I

    if-ge v0, v2, :cond_6

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$Callback;->onResult(Z)V

    return-void

    :cond_3
    :goto_0
    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$Callback;->onResult(Z)V

    return-void

    :cond_4
    :goto_1
    :try_start_1
    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$Callback;->onResult(Z)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$Callback;->onResult(Z)V

    return-void

    :cond_5
    :goto_2
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mValidationWaitsForCalendarTask:Z

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$Callback;->onResult(Z)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mDelegate:Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;

    if-nez v0, :cond_7

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$Callback;->onResult(Z)V

    return-void

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mCardUnmaskInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/b;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/b;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;->checkUserInputValidity(Ljava/lang/String;Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate$CheckUserInputValidity_Response;)V

    return-void
.end method

.method private getConfirmButtonLabel()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "confirmButtonLabel"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDrawableId()I
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "drawableId"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getFourDigitYear()I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mYearInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    return v0

    :cond_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    iget p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mThisYear:I

    rem-int/lit8 v0, p0, 0x64
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr p0, v0

    add-int/2addr v1, p0

    :cond_1
    return v1

    :catch_0
    return v0
.end method

.method private getTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "title"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleExceptionForExpirationMonth()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mMonthInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mMonthInput:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->lambda$validate$1(Z)V

    return-void
.end method

.method private isNewCard()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "isNewCard"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$Callback;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->lambda$areInputsValid$2(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$Callback;Z)V

    return-void
.end method

.method public static synthetic k(Landroidx/fragment/app/J;Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->lambda$removeTabManagerEventListener$0(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mCardUnmaskInput:Landroid/widget/EditText;

    return-object p0
.end method

.method private static synthetic lambda$areInputsValid$2(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$Callback;Z)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$Callback;->onResult(Z)V

    return-void
.end method

.method private static synthetic lambda$removeTabManagerEventListener$0(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->removeListener(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$validate$1(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->getPositiveButton()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mCurrentFocusedEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mDelegate:Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;-><init>()V

    const-string v1, "title"

    const-string v2, "instructions"

    invoke-static {v1, p0, v2, p1}, LB/e;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "confirmButtonLabel"

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "drawableId"

    invoke-virtual {p0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "shouldRequestExpirationDate"

    invoke-virtual {p0, p1, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "isNewCard"

    invoke-virtual {p0, p1, p5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mMonthInput:Landroid/widget/EditText;

    return-object p0
.end method

.method private onNewCardLinkClicked()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mDelegate:Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;

    invoke-interface {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;->onNewCardLinkClicked()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mShouldRequestExpirationDate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mNewCardLink:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mCardUnmaskInput:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->setInputError(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mMonthInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mValidationWaitsForCalendarTask:Z

    return p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mYearInput:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mThisMonth:I

    return-void
.end method

.method private removeTabManagerEventListener()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mTabManagerEventListener:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/sbrowser/autofill/personal_data/c;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mThisYear:I

    return-void
.end method

.method private setInitialFocus()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mShouldRequestExpirationDate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mMonthInput:Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mCardUnmaskInput:Landroid/widget/EditText;

    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboard(Landroid/view/View;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private setInputError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mErrorMessage:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p1, :cond_2

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060493

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mCardUnmaskInput:Landroid/widget/EditText;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->updateColorForInput(Landroid/widget/EditText;Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mMonthInput:Landroid/widget/EditText;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->updateColorForInput(Landroid/widget/EditText;Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mYearInput:Landroid/widget/EditText;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->updateColorForInput(Landroid/widget/EditText;Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private setInputsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mCardUnmaskInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mMonthInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mYearInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->getPositiveButton()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private setNoRetryError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mNoRetryErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mNoRetryErrorMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mNoRetryErrorMessage:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setOnClickEvent()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$7;-><init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mAlertDialog:Lm/l;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$8;-><init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mAlertDialog:Lm/l;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$9;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$9;-><init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mCurrentFocusedEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mCurrentFocusedEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$10;-><init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->adjustInputField()V

    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->adjustInstructionBottomMargin()V

    return-void
.end method

.method private updateColorForInput(Landroid/widget/EditText;Landroid/graphics/ColorFilter;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->getFourDigitYear()I

    move-result p0

    return p0
.end method

.method private validate()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/b;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->areInputsValid(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$Callback;)V

    return-void
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->handleExceptionForExpirationMonth()V

    return-void
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->isNewCard()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->setInitialFocus()V

    return-void
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->validate()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->validate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public disableAndWaitForVerification()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->setInputsEnabled(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->setInputError(Ljava/lang/String;)V

    return-void
.end method

.method public getPositiveButton()Landroid/widget/Button;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mAlertDialog:Lm/l;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "201"

    return-object p0
.end method

.method public getShouldRequestExpirationDate()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "shouldRequestExpirationDate"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/u;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mNewCardLink:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->onNewCardLinkClicked()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->addTabManagerEventListener()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->getShouldRequestExpirationDate()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mShouldRequestExpirationDate:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$CalendarTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$CalendarTask;-><init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;I)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e003b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b0621

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mInstructions:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1402cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b07f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mNoRetryErrorMessage:Landroid/widget/TextView;

    const v0, 0x7f0b021b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mCardUnmaskInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mCardUnmaskInput:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0b04e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mMonthInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    const v0, 0x7f0b04ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mYearInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    const v0, 0x7f0b04e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mExpirationContainer:Landroid/view/View;

    const v0, 0x7f0b0483

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mDynamicSpace:Landroid/view/View;

    const v0, 0x7f0b07cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mNewCardLink:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b04ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->getDrawableId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060305

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f0b03c5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b03c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mCVCContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0b061e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mInputContainer:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$1;-><init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mMonthInput:Landroid/widget/EditText;

    new-instance v2, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$2;-><init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mYearInput:Landroid/widget/EditText;

    new-instance v2, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$3;-><init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    const v3, 0x7f150324

    invoke-direct {v0, v2, v3}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object p1

    const v0, 0x7f1402c1

    invoke-virtual {p1, v0, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->getConfirmButtonLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mAlertDialog:Lm/l;

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$4;-><init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mAlertDialog:Lm/l;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mAlertDialog:Lm/l;

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->removeTabManagerEventListener()V

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mDelegate:Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;->dismissed()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/u;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/u;->getShowsDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mCurrentFocusedEditText:Landroid/widget/EditText;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mDelegate:Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/u;->dismiss()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->setOnClickEvent()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/u;->onStart()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->showExpirationDateInputsInputs()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mCardUnmaskInput:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$6;-><init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setDelegate(Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mDelegate:Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;

    return-void
.end method

.method public show(Landroidx/fragment/app/f0;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/f0;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, p2, v1}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v1}, Landroidx/fragment/app/a;->f(ZZ)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CardUnmaskDialogFragment"

    const-string p2, "Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public showExpirationDateInputsInputs()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mShouldRequestExpirationDate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mExpirationContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mExpirationContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mDynamicSpace:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mMonthInput:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mYearInput:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/u;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/u;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mInstructions:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mShouldRequestExpirationDate:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->showExpirationDateInputsInputs()V

    return-void
.end method

.method public verificationFinished(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->setInputError(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->setInputsEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->setInitialFocus()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mShouldRequestExpirationDate:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mNewCardLink:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->setInputError(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->setNoRetryError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/u;->dismissAllowingStateLoss()V

    :cond_2
    :goto_0
    return-void
.end method
