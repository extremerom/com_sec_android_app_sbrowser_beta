.class Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;
.super Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;
.source "SourceFile"


# instance fields
.field private mInfoDialog:Landroid/app/Dialog;

.field protected mPreview:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;-><init>()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->lambda$showRetryDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->lambda$showRetryDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->lambda$showRetryDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private getLayoutResourceForDesktopMode()I
    .locals 0

    const p0, 0x7f0e0032

    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->lambda$inflateContentView$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$inflateContentView$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->finish()V

    return-void
.end method

.method private synthetic lambda$showRetryDialog$1(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->finish()V

    return-void
.end method

.method private synthetic lambda$showRetryDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->finish()V

    return-void
.end method

.method private synthetic lambda$showRetryDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->runAuthentication()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public createBackend()Lcom/sec/android/app/sbrowser/authentication/Backend;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->mPreview:Landroid/widget/ImageView;

    invoke-static {v0, v1, p0, v2}, Lcom/sec/android/app/sbrowser/authentication/BackendFactory;->create(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;Landroid/widget/ImageView;)Lcom/sec/android/app/sbrowser/authentication/Backend;

    move-result-object p0

    return-object p0
.end method

.method public final getDialogStyle()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f150023

    return p0

    :cond_0
    const p0, 0x7f150024

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

.method public inflateContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->getLayoutResourceForDesktopMode()I

    move-result p0

    invoke-virtual {p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFolderType(Landroid/content/Context;)Z

    move-result v0

    const v2, 0x7f0b08f5

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->getLayoutResourceForFolderTypePhone()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->mPreview:Landroid/widget/ImageView;

    const v0, 0x7f0b08f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFlipClosed(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->getLayoutResourceForGeneralPhone(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b0200

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/c;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/sbrowser/authentication/c;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->mPreview:Landroid/widget/ImageView;

    return-object p1
.end method

.method public onDisplayChanged(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->dismiss()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->createDialogAndBackend()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->mInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->mInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->getRotation180ErrorMessage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->showRetryDialog(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->show()V

    :goto_0
    return-void
.end method

.method public onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;->errorType:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;->errorMessage:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->showRetryDialog(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140e1d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->showRetryDialog(Ljava/lang/CharSequence;Z)V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onFocusChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->mInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->onFocusChange(Z)V

    return-void
.end method

.method public showRetryDialog(Ljava/lang/CharSequence;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->mInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->cancelAuthentication()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f140e20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/authentication/b;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;I)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    if-eqz p2, :cond_1

    new-instance p2, Lcom/sec/android/app/sbrowser/authentication/e;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/authentication/e;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;I)V

    const v0, 0x7f1402c1

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/authentication/e;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;I)V

    const v1, 0x7f1400ec

    invoke-virtual {p2, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->mInfoDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7f6

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->mInfoDialog:Landroid/app/Dialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->mInfoDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
