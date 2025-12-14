.class Lcom/sec/android/app/sbrowser/authentication/AuthenticationIntelligentScanMultiAlert;
.super Lcom/sec/android/app/sbrowser/authentication/AuthenticationIntelligentScanAlert;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIntelligentScanAlert;-><init>()V

    return-void
.end method


# virtual methods
.method public createBackend()Lcom/sec/android/app/sbrowser/authentication/Backend;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN_MULTI:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->mPreview:Landroid/widget/ImageView;

    invoke-static {v0, v1, p0, v2}, Lcom/sec/android/app/sbrowser/authentication/BackendFactory;->create(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;Landroid/widget/ImageView;)Lcom/sec/android/app/sbrowser/authentication/Backend;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultMessage()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1410af

    goto :goto_0

    :cond_0
    const p0, 0x7f140220

    :goto_0
    return p0
.end method

.method public getLayoutResourceForGeneralPhone(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN_MULTI:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->create(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIntelligentScanAlert;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p1, p1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;->errorType:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_2

    const/16 v0, 0x66

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIntelligentScanAlert;->mStatus:Landroid/widget/TextView;

    const p1, 0x7f140697

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIntelligentScanAlert;->mStatus:Landroid/widget/TextView;

    const p1, 0x7f140696

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
