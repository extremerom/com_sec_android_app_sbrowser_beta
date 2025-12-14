.class public Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;
.super Lcom/sec/android/app/sbrowser/auth/AuthFragment;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/AuthView;
.implements Lcom/sec/android/app/sbrowser/auth/LockoutHelper$Listener;


# instance fields
.field private mAuthViewAdapter:Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

.field private mBackgroundView:Landroid/view/View;

.field private mDescription:Landroid/widget/TextView;

.field private mLockoutHelper:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;-><init>()V

    return-void
.end method

.method private noPasswordAuth()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->setSecretModeEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private onCancelClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;->mAuthViewAdapter:Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;->cancelAuth()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private onDisableClick()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->setDisabledClicked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->setSecretModeEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private onResetClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->showResetDialog()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;->onCancelClick()V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;->onDisableClick()V

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;->onResetClick()V

    return-void
.end method

.method private usePasswordAuth()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 v1, 0x79

    const/16 v2, 0x62

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public getPreviewImage()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isScreenOn()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAttemptLockout()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;->mBackgroundView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAuthBlock()V
    .locals 0

    return-void
.end method

.method public onAuthCancel(I)V
    .locals 0

    return-void
.end method

.method public onAuthRetry()V
    .locals 0

    return-void
.end method

.method public onAuthSuccess(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->enableSecretMode()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthType:I

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapterFactory;->create(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/auth/AuthView;I)Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;->mAuthViewAdapter:Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    iget p2, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthType:I

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/auth/AuthViewInflater;->inflate(Landroid/app/Activity;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onErrorDialogOk()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;->mAuthViewAdapter:Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;->startAuth()V

    return-void
.end method

.method public onLockoutFinished()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;->mAuthViewAdapter:Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;->startAuth()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;->mBackgroundView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const-string v0, "NonSamsungAuthFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;->mAuthViewAdapter:Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;->cancelAuth()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "NonSamsungAuthFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;->showHandleAttemptLockout(J)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;->mAuthViewAdapter:Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;->startAuth()V

    :goto_0
    return-void
.end method

.method public onTimeoutStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0b00f8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;->mBackgroundView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0b00fc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;->mDescription:Landroid/widget/TextView;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;->mLockoutHelper:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->setListener(Lcom/sec/android/app/sbrowser/auth/LockoutHelper$Listener;)V

    const p2, 0x7f0b0203

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment$1;-><init>(Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const p2, 0x7f0b09fc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment$2;-><init>(Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const p2, 0x7f0b0411

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment$3;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment$3;-><init>(Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public showDialogIfRequired()V
    .locals 0

    return-void
.end method

.method public showErrorPopup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showHandleAttemptLockout(J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;->mLockoutHelper:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->handleAttemptLockout(J)V

    return-void
.end method

.method public showIdentifyImg()V
    .locals 0

    return-void
.end method

.method public showMessage(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showMessage errorCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NonSamsungAuthFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "showMessage errorMessage:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x12e

    if-ne p1, p2, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mRequestCode:I

    const/16 p2, 0x79

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0

    :cond_0
    const/16 p2, 0x78

    if-ne p1, p2, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const/16 p2, 0x12f

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;->noPasswordAuth()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthFragment;->usePasswordAuth()V

    :cond_3
    :goto_0
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
