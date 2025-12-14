.class public Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;
.super Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;
.source "SourceFile"


# instance fields
.field private mHadTimeoutError:Z

.field private mStatus:Landroid/widget/TextView;

.field private mStatusIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;-><init>()V

    return-void
.end method

.method private getStatusToDisableHomeAndRecent()I
    .locals 1

    :try_start_0
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->DISABLE_HOME:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->DISABLE_RECENT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr p0, v0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private getStatusToEnableAll()I
    .locals 0

    :try_start_0
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->DISABLE_NONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private setStatusBarIfInDisplayFingerprintSensor(I)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->getSystemService(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->disable(I)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setStatusBar: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "AuthenticationFingerprintActivity"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private setWidthAndBottomMargin()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->getDialogWidthWithAuthentication(Landroid/app/Activity;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    const/16 v4, 0x50

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    xor-int/lit8 v2, v3, 0x1

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->getInDisplayFingerprintSensorBottomMargin(Z)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz v3, :cond_4

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->resizeAndMoveIfDialogOverlappedWithInDisplayFP(Landroid/app/Activity;Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getKnoxLogoBottomMargin()I

    move-result p0

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public activityTitleForVoiceAssistance()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140556

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createBackend()Lcom/sec/android/app/sbrowser/authentication/Backend;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-static {p0, v0, p0}, Lcom/sec/android/app/sbrowser/authentication/BackendFactory;->create(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;)Lcom/sec/android/app/sbrowser/authentication/Backend;

    move-result-object p0

    return-object p0
.end method

.method public createContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->create(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b05ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->mStatusIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b0be6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->mStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->onResetErrorMessage()V

    return-object p1
.end method

.method public getDefaultMessage()I
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1410ad

    goto :goto_0

    :cond_0
    const p0, 0x7f1408c9

    :goto_0
    return p0
.end method

.method public getMessage(II)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f14107b

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lm/n;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->setWidthAndBottomMargin()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->setWidthAndBottomMargin()V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Activity(Landroid/app/Activity;)V

    return-void
.end method

.method public onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;->errorType:I

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;->errorMessage:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->finish()V

    return v1

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->mStatus:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;->errorMessage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->mStatusIcon:Landroid/widget/ImageView;

    const v0, 0x7f080254

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->mStatus:Landroid/widget/TextView;

    const p1, 0x7f140697

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->mStatusIcon:Landroid/widget/ImageView;

    const v0, 0x7f080256

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->mStatus:Landroid/widget/TextView;

    const v0, 0x7f140555

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->mHadTimeoutError:Z

    return v1

    :pswitch_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->mStatusIcon:Landroid/widget/ImageView;

    const v0, 0x7f080255

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->mStatus:Landroid/widget/TextView;

    const p1, 0x7f140696

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->onPause()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->getStatusToEnableAll()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->setStatusBarIfInDisplayFingerprintSensor(I)V

    return-void
.end method

.method public onResetErrorMessage()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->mHadTimeoutError:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->mStatusIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->mStatusIcon:Landroid/widget/ImageView;

    const v1, 0x7f080253

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->mStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->getDefaultMessage()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->getStatusToDisableHomeAndRecent()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;->setStatusBarIfInDisplayFingerprintSensor(I)V

    return-void
.end method
