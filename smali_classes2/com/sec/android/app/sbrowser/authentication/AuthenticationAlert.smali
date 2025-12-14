.class abstract Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;
.implements Lcom/sec/android/app/sbrowser/common/widget/FocusEventListenableAlertDialog$OnFocusChangeListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mContentView:Landroid/view/View;

.field private mDialog:Landroid/app/Dialog;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mInfoDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->createDialogAndBackend()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->lambda$createDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->lambda$createAndShowVerificationFailedDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->lambda$createAndShowVerificationFailedDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private createAndShowVerificationFailedDialog(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1403e5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/e;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/authentication/e;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;I)V

    const v1, 0x7f14084e

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/authentication/b;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;I)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mInfoDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mInfoDialog:Landroid/app/Dialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mInfoDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createContentView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->inflateContentView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private createDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/widget/FocusEventListenableAlertDialog;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getDialogStyle()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/widget/FocusEventListenableAlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/widget/FocusEventListenableAlertDialog;->setOnFocusChangeListener(Lcom/sec/android/app/sbrowser/common/widget/FocusEventListenableAlertDialog$OnFocusChangeListener;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/authentication/b;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/sec/android/app/sbrowser/authentication/b;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;I)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7f6

    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->create()V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private synthetic lambda$createAndShowVerificationFailedDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->finish()V

    return-void
.end method

.method private synthetic lambda$createAndShowVerificationFailedDialog$2(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->finish()V

    return-void
.end method

.method private synthetic lambda$createDialog$0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->finish()V

    return-void
.end method

.method private registerDisplayListener()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert$1;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mActivity:Landroid/app/Activity;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method private showLockOutDialog(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mInfoDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->createAndShowVerificationFailedDialog(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private unregisterDisplayListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mActivity:Landroid/app/Activity;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method


# virtual methods
.method public final cancelAuthentication()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->cancelAuthentication()V

    return-void
.end method

.method public abstract createBackend()Lcom/sec/android/app/sbrowser/authentication/Backend;
.end method

.method public final createDialogAndBackend()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->createContentView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->createDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->createBackend()Lcom/sec/android/app/sbrowser/authentication/Backend;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    return-void
.end method

.method public final dismiss()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->unregisterDisplayListener()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->cancelAuthentication()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final finish()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->dismiss()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getStatusToEnableAll()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->setStatusBarIfInDisplayFingerprintSensor(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->handleCallback()V

    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public final getDialog()Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public abstract getDialogStyle()I
.end method

.method public getMessage(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f14021f

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-static {p1, v0}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f1406a1

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStatusToDisableHomeAndRecent()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStatusToEnableAll()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract inflateContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public abstract onDisplayChanged(I)V
.end method

.method public onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z
    .locals 3

    iget v0, p1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;->errorType:I

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x68

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_0

    const/16 p1, 0xc8

    if-eq v0, p1, :cond_2

    const/16 p1, 0x12c

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;->errorMessage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->showLockOutDialog(Ljava/lang/String;)Z

    return v2

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->lockOut()V

    return v2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->lockOutAfterNoMatchCountIncrease()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onFocusChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->finish()V

    :cond_2
    return-void
.end method

.method public onLockOut(II)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getMessage(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->showLockOutDialog(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onSucceeded(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;[B)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->makePendingResult(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;[B)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/authentication/Backend;->resetNoMatchCount()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->finish()V

    return-void
.end method

.method public final runAuthentication()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->authenticateIfNeeded()V

    return-void
.end method

.method public final setActivity(Landroid/app/Activity;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mActivity:Landroid/app/Activity;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mActivity:Landroid/app/Activity;

    :cond_1
    :goto_0
    return-void
.end method

.method public setStatusBarIfInDisplayFingerprintSensor(I)V
    .locals 0

    return-void
.end method

.method public final show()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->forcehideKeyboard(Landroid/app/Activity;)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->registerDisplayListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getStatusToDisableHomeAndRecent()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->setStatusBarIfInDisplayFingerprintSensor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->runAuthentication()V

    return-void
.end method
