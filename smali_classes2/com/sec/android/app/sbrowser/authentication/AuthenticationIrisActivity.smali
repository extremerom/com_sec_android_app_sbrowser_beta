.class public Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;
.super Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;
.source "SourceFile"


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field protected mPreview:Landroid/widget/ImageView;

.field protected mPreviewFallback:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;-><init>()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->lambda$showRetryDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->lambda$showRetryDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$showRetryDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$showRetryDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->authenticateIfNeeded()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public activityTitleForVoiceAssistance()Ljava/lang/String;
    .locals 1

    const v0, 0x7f14064f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createBackend()Lcom/sec/android/app/sbrowser/authentication/Backend;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mPreview:Landroid/widget/ImageView;

    invoke-static {p0, v0, p0, v1}, Lcom/sec/android/app/sbrowser/authentication/BackendFactory;->create(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;Landroid/widget/ImageView;)Lcom/sec/android/app/sbrowser/authentication/Backend;

    move-result-object p0

    return-object p0
.end method

.method public createContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->getLayoutResourceForDesktopMode()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f150023

    invoke-virtual {p0, v0}, Lm/n;->setTheme(I)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->exitMultiWindowMode(Landroid/app/Activity;)Z

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFolderType(Landroid/content/Context;)Z

    move-result v0

    const v2, 0x7f0b08f5

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->getLayoutResourceForFolderTypePhone()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mPreview:Landroid/widget/ImageView;

    const v0, 0x7f0b08f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mPreviewFallback:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFlipClosed(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mPreviewFallback:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mPreviewFallback:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->getLayoutResourceForGeneralPhone(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mPreview:Landroid/widget/ImageView;

    :goto_0
    return-object p1
.end method

.method public getLayoutResourceForDesktopMode()I
    .locals 0

    const p0, 0x7f0e0032

    return p0
.end method

.method public getLayoutResourceForFolderTypePhone()I
    .locals 0

    const p0, 0x7f0e0033

    return p0
.end method

.method public getLayoutResourceForGeneralPhone(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->create(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getRotation180ErrorMessage()I
    .locals 0

    const p0, 0x7f1400eb

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lm/n;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    if-nez p1, :cond_0

    const-string p0, "AuthenticationIrisActivity"

    const-string p1, "onConfigurationChanged : mBackend is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFlipClosed(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/authentication/Backend;->cancelAuthentication()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mPreviewFallback:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFolderType(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mPreviewFallback:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity$2;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "window"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->getRotation180ErrorMessage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->showRetryDialog(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    if-nez v0, :cond_0

    const-string p0, "AuthenticationIrisActivity"

    const-string p1, "onDisplayChanged : mBackend is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->cancelAuthentication()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->resetViewAndBackend()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->getRotation180ErrorMessage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->showRetryDialog(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->authenticateIfNeeded()V

    :goto_0
    return-void
.end method

.method public onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;->errorType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;->errorMessage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->showRetryDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140e1d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->showRetryDialog(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/activity/p;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    const-string v1, "AuthenticationIrisActivity"

    if-nez v0, :cond_0

    const-string p0, "onMultiWindowModeChanged : mBackend is null."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "Enter multi window mode."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/authentication/Backend;->cancelAuthentication()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1407b1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->finish()V

    goto :goto_0

    :cond_1
    const-string p1, "Enter fullscreen mode."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->authenticateIfNeeded()V

    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public showRetryDialog(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->showRetryDialog(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public showRetryDialog(Ljava/lang/CharSequence;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->mBackend:Lcom/sec/android/app/sbrowser/authentication/Backend;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->cancelAuthentication()V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f140e20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity$1;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    if-eqz p2, :cond_1

    new-instance p2, Lcom/sec/android/app/sbrowser/authentication/d;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/authentication/d;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;I)V

    const v0, 0x7f1402c1

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/authentication/d;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;I)V

    const v1, 0x7f1400ec

    invoke-virtual {p2, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mDialog:Landroid/app/Dialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method
