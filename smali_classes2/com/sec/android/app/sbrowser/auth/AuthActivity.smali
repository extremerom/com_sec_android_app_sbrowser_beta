.class public abstract Lcom/sec/android/app/sbrowser/auth/AuthActivity;
.super Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogoActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityDelegate;
.implements Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;
.implements Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Listener;


# instance fields
.field private mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

.field protected mDialog:Landroid/app/AlertDialog;

.field protected mFragment:Lcom/sec/android/app/sbrowser/auth/AuthFragment;

.field private mRotationManager:Lcom/sec/android/app/sbrowser/common/utils/RotationManager;

.field protected mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

.field protected mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogoActivity;-><init>()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/auth/AuthActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->lambda$createDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/auth/AuthActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->lambda$createDialog$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$createDialog$0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$createDialog$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->onBackPressed()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static requestOverlayPermission(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AuthActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setPrivateFlagForNoMoveAnimation(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    const-string p0, "privateFlags"

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[setPrivateFlagForNoMoveAnimation] getPrivateFlag : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AuthActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private shouldResizeAndMoveDialogWithInDisplayFingerprint()Z
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/IntentHelper;->getAuthType(Landroid/content/Intent;)I

    move-result p0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method


# virtual methods
.method public applyDialogStyleIfRequired()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->shouldApplyDialogStyle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->setPrivateFlagForNoMoveAnimation(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->getBottomMargin()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mFragment:Lcom/sec/android/app/sbrowser/auth/AuthFragment;

    if-eqz v1, :cond_3

    iget v1, v1, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->mAuthType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    :cond_2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->getDialogWidthWithAuthentication(Landroid/app/Activity;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->getDialogWidthWithAuthentication(Landroid/app/Activity;Z)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->shouldResizeAndMoveDialogWithInDisplayFingerprint()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->resizeAndMoveIfDialogOverlappedWithInDisplayFP(Landroid/app/Activity;Landroid/view/WindowManager$LayoutParams;)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_2
    return-void
.end method

.method public createDialog()Landroid/app/AlertDialog;
    .locals 3

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f141087

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "AuthActivity"

    const-string v1, "[createDialog] finished. There is no overlay permission."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->finish()V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->requestOverlayPermission(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->isSecretModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->onBackPressed()V

    const-string p0, "[createDialog] onBackPressed. To cancel authentication."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/auth/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7f6

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/auth/c;-><init>(Lcom/sec/android/app/sbrowser/auth/AuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object v0
.end method

.method public createFullscreenDialog(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->shouldShowFullScreenDialogInMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->createDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->applyDialogStyleIfRequired()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public dismissDialog()V
    .locals 2

    const-string v0, "AuthActivity"

    const-string v1, "dismiss dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public finish()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->shouldResetAuthActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->setAuthActivity(Landroid/app/Activity;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mFragment:Lcom/sec/android/app/sbrowser/auth/AuthFragment;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->finish()V

    :cond_1
    return-void
.end method

.method public getBottomMargin()I
    .locals 1

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07010d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public isDexMode()Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isDialogShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mFragment:Lcom/sec/android/app/sbrowser/auth/AuthFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->onBackPressed()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/fragment/app/J;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lm/n;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->applyDialogStyleIfRequired()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogoActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const-string v0, "key_is_recreated"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "key_density"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->finish()V

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->addListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mRotationManager:Lcom/sec/android/app/sbrowser/common/utils/RotationManager;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->addListener(Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Listener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->onPreInflation()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->setContentView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->onPostInflation()V

    invoke-static {}, Lb1/a;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/auth/a;-><init>(Lcom/sec/android/app/sbrowser/auth/AuthActivity;)V

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;-><init>(Landroid/window/OnBackInvokedCallback;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-static {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->k(Lcom/sec/android/app/sbrowser/auth/AuthActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;->getOnSystemNavigationCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->x(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->removeListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mRotationManager:Lcom/sec/android/app/sbrowser/common/utils/RotationManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->removeListener(Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Listener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->shouldResetAuthActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->setAuthActivity(Landroid/app/Activity;)V

    :cond_0
    invoke-static {}, Lb1/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->k(Lcom/sec/android/app/sbrowser/auth/AuthActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;->getOnSystemNavigationCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lj9/b;->j(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_1
    invoke-super {p0}, Lm/n;->onDestroy()V

    return-void
.end method

.method public onPostInflation()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    const v1, 0x7f0b00f5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/f0;->C(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mFragment:Lcom/sec/android/app/sbrowser/auth/AuthFragment;

    if-nez v0, :cond_0

    const-string p0, "AuthActivity"

    const-string v0, "[onPostInflation] mFragment is null"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->setAuthActivityDelegate(Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mFragment:Lcom/sec/android/app/sbrowser/auth/AuthFragment;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getAuthManager()Lcom/sec/android/app/sbrowser/auth/AuthManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->setAuthManager(Lcom/sec/android/app/sbrowser/auth/AuthManager;)V

    return-void
.end method

.method public onPreInflation()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_NIGHT:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_DEFAULT:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0, p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->setAuthActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/knox_logo/KnoxLogoActivity;->onResume()V

    invoke-virtual {p0, p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->setAuthActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onRotationChanged(Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;)V
    .locals 0

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;->flipped:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->applyDialogStyleIfRequired()V

    :cond_0
    return-void
.end method

.method public onSecretModeChanged(ZLandroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->finish()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mFragment:Lcom/sec/android/app/sbrowser/auth/AuthFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public overrideEnterAnimation()V
    .locals 0

    return-void
.end method

.method public setAuthActivity(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public setContentView()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->overrideEnterAnimation()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->applyDialogStyleIfRequired()V

    return-void
.end method

.method public shouldApplyDialogStyle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldResetAuthActivity()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldShowFullScreenDialogInMultiWindow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldShowKnoxLogo()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mFragment:Lcom/sec/android/app/sbrowser/auth/AuthFragment;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->shouldShowKnoxLogo()Z

    move-result p0

    return p0
.end method

.method public showDialogIfRequired()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const-string v0, "AuthActivity"

    const-string v1, "show dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->applyDialogStyleIfRequired()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
