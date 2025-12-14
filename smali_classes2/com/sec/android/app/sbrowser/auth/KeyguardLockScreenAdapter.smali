.class public Lcom/sec/android/app/sbrowser/auth/KeyguardLockScreenAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mSecretModeManager:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/KeyguardLockScreenAdapter;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/KeyguardLockScreenAdapter;->mSecretModeManager:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/auth/KeyguardLockScreenAdapter;Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/KeyguardLockScreenAdapter;->lambda$show$0(Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V

    return-void
.end method

.method private synthetic lambda$show$0(Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V
    .locals 2

    const-string v0, "show::onActivityResult resultCode:"

    const-string v1, "KeyguardLockScreenAdapter"

    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/KeyguardLockScreenAdapter;->notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/KeyguardLockScreenAdapter;->notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/KeyguardLockScreenAdapter;->mSecretModeManager:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1, p1}, Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;->setSecretModeEnabled(ZLandroid/os/Bundle;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "KeyguardLockScreenAdapter"

    const-string p1, "notifyAuthResult callback is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthCallback;->onAuthResult(Z)V

    return-void
.end method


# virtual methods
.method public show(ILcom/sec/android/app/sbrowser/auth/AuthCallback;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/KeyguardLockScreenAdapter;->mActivity:Landroid/app/Activity;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/KeyguardLockScreenAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1400ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/KeyguardLockScreenAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140220

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "KeyguardLockScreenAdapter"

    const-string p1, "show there is no valid intent"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/KeyguardLockScreenAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/sec/android/app/sbrowser/auth/o;-><init>(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;->startActivityForResult(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;)V

    return-void
.end method
