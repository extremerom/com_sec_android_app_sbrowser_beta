.class Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;
.super Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;
.source "SourceFile"


# instance fields
.field private mHadTimeoutError:Z

.field private mStatus:Landroid/widget/TextView;

.field private mStatusIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->setWidthAndBottomMargin()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->lambda$inflateContentView$0(Landroid/view/View;)V

    return-void
.end method

.method private getDefaultMessage()I
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

.method private synthetic lambda$inflateContentView$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->finish()V

    return-void
.end method

.method private setWidthAndBottomMargin()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->getDialogWidthWithAuthentication(Landroid/app/Activity;Z)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    const/16 v3, 0x50

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    xor-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->getInDisplayFingerprintSensorBottomMargin(Z)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->resizeAndMoveIfDialogOverlappedWithInDisplayFP(Landroid/app/Activity;Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getKnoxLogoBottomMargin()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final createBackend()Lcom/sec/android/app/sbrowser/authentication/Backend;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/authentication/BackendFactory;->create(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;)Lcom/sec/android/app/sbrowser/authentication/Backend;

    move-result-object p0

    return-object p0
.end method

.method public final getDialogStyle()I
    .locals 0

    const p0, 0x7f150023

    return p0
.end method

.method public getMessage(II)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object p0

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

.method public getStatusToDisableHomeAndRecent()I
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

.method public getStatusToEnableAll()I
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

.method public final inflateContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationViewFactory;->create(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b0200

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/authentication/c;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b05ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->mStatusIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b0be6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->mStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->onResetErrorMessage()V

    return-object p1
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->setWidthAndBottomMargin()V

    :goto_0
    return-void
.end method

.method public final onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

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
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;->errorMessage:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->finish()V

    return v1

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->mStatus:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;->errorMessage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->mStatusIcon:Landroid/widget/ImageView;

    const v0, 0x7f080254

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->mStatus:Landroid/widget/TextView;

    const p1, 0x7f140697

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->mStatusIcon:Landroid/widget/ImageView;

    const v0, 0x7f080256

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->mStatus:Landroid/widget/TextView;

    const v0, 0x7f140555

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->mHadTimeoutError:Z

    return v1

    :pswitch_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->mStatusIcon:Landroid/widget/ImageView;

    const v0, 0x7f080255

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->mStatus:Landroid/widget/TextView;

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

.method public onResetErrorMessage()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->mHadTimeoutError:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->mStatusIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->mStatusIcon:Landroid/widget/ImageView;

    const v1, 0x7f080253

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->mStatus:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;->getDefaultMessage()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setStatusBarIfInDisplayFingerprintSensor(I)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

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

    const-string v0, "AuthenticationFingerprintAlert"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
