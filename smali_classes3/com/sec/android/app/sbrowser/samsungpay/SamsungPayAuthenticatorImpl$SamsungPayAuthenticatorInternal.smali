.class public Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamsungPayAuthenticatorInternal"
.end annotation


# instance fields
.field private mAbortRetry:Z

.field private mCallback:Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;

.field private mUrlHost:Ljava/lang/String;

.field private final mVirtualCardBlockListHandler:Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListHandler;

.field private mVirtualcardID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->mVirtualCardBlockListHandler:Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListHandler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;)Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->mCallback:Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;

    return-object p0
.end method

.method public static create(ZLjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;)Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;-><init>()V

    iput-object p3, v0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->mCallback:Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;

    iput-boolean p0, v0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->mAbortRetry:Z

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->mUrlHost:Ljava/lang/String;

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->mVirtualcardID:Ljava/lang/String;

    return-object v0
.end method

.method private onAuthResultCancel(Landroid/content/Intent;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->mCallback:Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, v0}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;->onResult(ZLandroid/content/Intent;Z)V

    return-void
.end method

.method private onAuthResultSuccess(Landroid/content/Intent;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->mCallback:Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;->onResult(ZLandroid/content/Intent;Z)V

    return-void
.end method

.method private onLimitExceed(Landroid/content/Intent;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1410b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1410c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f140899

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in showing alert dialog:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungPayAuthenticatorInternal"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0807d4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->mCallback:Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, v0}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;->onResult(ZLandroid/content/Intent;Z)V

    return-void
.end method

.method private onNoResponseServer(Landroid/content/Intent;)V
    .locals 5

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->mCallback:Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;

    invoke-interface {p0, v1, p1, v1}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;->onResult(ZLandroid/content/Intent;Z)V

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->mAbortRetry:Z

    const v3, 0x1020002

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1410bb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->make(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)LH6/o;

    move-result-object v0

    invoke-virtual {v0}, LH6/o;->l()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->mCallback:Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;

    invoke-interface {p0, v1, p1, v1}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;->onResult(ZLandroid/content/Intent;Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1410bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->make(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)LH6/o;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1410ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal$2;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal$2;-><init>(Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, LH6/o;->k(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal$1;-><init>(Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, LH6/m;->a(LH6/n;)V

    invoke-virtual {v0}, LH6/o;->l()V

    return-void
.end method

.method private onNoVerificationMethod(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "no authentication method"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->mCallback:Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, v0}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;->onResult(ZLandroid/content/Intent;Z)V

    return-void
.end method

.method private onNotSupportMerchant(Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1410c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1402ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in showing alert dialog:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungPayAuthenticatorInternal"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->mVirtualCardBlockListHandler:Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->mUrlHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListHandler;->addUrlBlockListVirtualCard(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->mCallback:Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, v0}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;->onResult(ZLandroid/content/Intent;Z)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->virtualCardNotSupportedMerchant()Z

    move-result p1

    const/16 v0, 0x4e22

    if-eqz p1, :cond_0

    move p2, v0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->onAuthResultSuccess(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x4e20

    if-ne p2, p1, :cond_2

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->onNoVerificationMethod(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x4e21

    if-ne p2, p1, :cond_3

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->onNoResponseServer(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_4

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->onNotSupportMerchant(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const/16 p1, 0x4e23

    if-ne p2, p1, :cond_5

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->onLimitExceed(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->onAuthResultCancel(Landroid/content/Intent;)V

    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "android.intent.action.VIEW"

    invoke-static {p1}, LB/e;->i(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "samsungwallet://paymentauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "extra_is_vc_autofill_auth_request"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_vc_autofill_card_id"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->mVirtualcardID:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_vc_autofill_merchant_url"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl$SamsungPayAuthenticatorInternal;->mUrlHost:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
