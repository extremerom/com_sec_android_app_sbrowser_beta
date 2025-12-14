.class public abstract Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;
.super Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogoActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;


# instance fields
.field protected mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

.field protected mCancelButton:Landroid/widget/Button;

.field private mContentView:Landroid/view/View;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogMessage:Landroid/widget/TextView;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mFontChangeObserver:Landroid/database/ContentObserver;

.field private mLockPatternUtils:Lcom/sec/sbrowser/spl/wrapper/SemLockPatternUtils;

.field private mSendResultAfterFinish:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogoActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mSendResultAfterFinish:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity$1;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mFontChangeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private createAndShowDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1403e5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity$4;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;)V

    const v2, 0x7f14084e

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity$3;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mDialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mDialog:Landroid/app/Dialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mDialogMessage:Landroid/widget/TextView;

    return-void
.end method

.method private createLockPatternUtils()V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemLockPatternUtils;

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mLockPatternUtils:Lcom/sec/sbrowser/spl/wrapper/SemLockPatternUtils;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AuthenticationActivity"

    const-string v0, "Exception creating SemLockPatternUtils constructor"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private createView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mContentView:Landroid/view/View;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->createContentView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lm/n;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    const v0, 0x7f0b0200

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->shouldUse3p()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->getLockScreenType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mCancelButton:Landroid/widget/Button;

    const v1, 0x7f1410a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mCancelButton:Landroid/widget/Button;

    const v1, 0x7f1410a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mCancelButton:Landroid/widget/Button;

    const v1, 0x7f1410a7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/authentication/a;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/authentication/a;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method private getLockScreenType()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mLockPatternUtils:Lcom/sec/sbrowser/spl/wrapper/SemLockPatternUtils;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->createLockPatternUtils()V

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mLockPatternUtils:Lcom/sec/sbrowser/spl/wrapper/SemLockPatternUtils;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/sbrowser/spl/wrapper/SemLockPatternUtils;->getCredentialTypeForUser(I)I

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AuthenticationActivity"

    const-string v0, "Exception getting screen lock type."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method private hideView()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mContentView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->run3p()V

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->finish()V

    return-void
.end method

.method private registerDisplayListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity$2;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    :cond_0
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method private run3p()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mSendResultAfterFinish:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->finish()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->cancelAuthentication()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/SamsungPass3PAuthenticator;->authenticate()V

    return-void
.end method

.method private sendResult()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mSendResultAfterFinish:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->cancelAuthentication()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->handleCallback()V

    :cond_1
    :goto_0
    return-void
.end method

.method private shouldUse3p()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->is3pEnabled()Z

    move-result p0

    return p0
.end method

.method private showLockOutDialog(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->hideView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->createAndShowDialog()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mDialogMessage:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private unregisterDisplayListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method


# virtual methods
.method public abstract activityTitleForVoiceAssistance()Ljava/lang/String;
.end method

.method public abstract createBackend()Lcom/sec/android/app/sbrowser/authentication/Backend;
.end method

.method public abstract createContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public final finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->sendResult()V

    return-void
.end method

.method public getMessage(II)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f14021f

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-static {p1, v0}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogoActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->activityTitleForVoiceAssistance()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->resetViewAndBackend()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "flip_font_style"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mFontChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->registerDisplayListener()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->createLockPatternUtils()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mFontChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->unregisterDisplayListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mLockPatternUtils:Lcom/sec/sbrowser/spl/wrapper/SemLockPatternUtils;

    invoke-super {p0}, Lm/n;->onDestroy()V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    return-void
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

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->showLockOutDialog(Ljava/lang/String;)Z

    return v2

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->lockOut()V

    return v2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->lockOutAfterNoMatchCountIncrease()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onLockOut(II)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->getMessage(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->showLockOutDialog(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogoActivity;->onPause()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->finish()V

    return-void
.end method

.method public onResetErrorMessage()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogoActivity;->onResume()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    if-nez p0, :cond_0

    const-string p0, "AuthenticationActivity"

    const-string v0, "onResume : mBackend is null."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->authenticateIfNeeded()V

    return-void
.end method

.method public onSucceeded(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;[B)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->makePendingResult(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;[B)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/authentication/Backend;->resetNoMatchCount()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->finish()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->finish()V

    :cond_3
    return-void
.end method

.method public resetViewAndBackend()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mContentView:Landroid/view/View;

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->createView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->createBackend()Lcom/sec/android/app/sbrowser/authentication/Backend;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    return-void
.end method

.method public shouldShowKnoxLogo()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
