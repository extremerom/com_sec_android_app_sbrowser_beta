.class public Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassRegistration$SamsungPassRegistrationInternal;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamsungPassRegistrationInternal"
.end annotation


# instance fields
.field private mCallback:Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;

.field private mPassLaunched:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static create(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassRegistration$SamsungPassRegistrationInternal;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassRegistration$SamsungPassRegistrationInternal;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassRegistration$SamsungPassRegistrationInternal;-><init>()V

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassRegistration$SamsungPassRegistrationInternal;->mCallback:Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;

    return-object v0
.end method

.method private sendResult()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassRegistration$SamsungPassRegistrationInternal;->mCallback:Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;->onResult(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassRegistration$SamsungPassRegistrationInternal;->mPassLaunched:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassRegistration$SamsungPassRegistrationInternal;->mPassLaunched:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassRegistration$SamsungPassRegistrationInternal;->sendResult()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassRegistration$SamsungPassRegistrationInternal;->mPassLaunched:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "package:com.android.browser.application_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.samsung.android.samsungpass.ACTION_SIGNUP"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
