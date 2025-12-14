.class public Lcom/sec/android/app/sbrowser/authentication/AuthenticationIntelligentScanActivity;
.super Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;
.source "SourceFile"


# instance fields
.field protected mStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public activityTitleForVoiceAssistance()Ljava/lang/String;
    .locals 1

    const v0, 0x7f14062b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createBackend()Lcom/sec/android/app/sbrowser/authentication/Backend;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->mPreview:Landroid/widget/ImageView;

    invoke-static {p0, v0, p0, v1}, Lcom/sec/android/app/sbrowser/authentication/BackendFactory;->create(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;Landroid/widget/ImageView;)Lcom/sec/android/app/sbrowser/authentication/Backend;

    move-result-object p0

    return-object p0
.end method

.method public createContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->createContentView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b0be6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIntelligentScanActivity;->mStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIntelligentScanActivity;->getDefaultMessage()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    return-object p1
.end method

.method public getDefaultMessage()I
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1410af

    goto :goto_0

    :cond_0
    const p0, 0x7f140629

    :goto_0
    return p0
.end method

.method public getLayoutResourceForFolderTypePhone()I
    .locals 0

    const p0, 0x7f0e002d

    return p0
.end method

.method public getLayoutResourceForGeneralPhone(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->create(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getRotation180ErrorMessage()I
    .locals 0

    const p0, 0x7f1400ea

    return p0
.end method

.method public onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

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
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onResetErrorMessage()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIntelligentScanActivity;->mStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIntelligentScanActivity;->getDefaultMessage()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
