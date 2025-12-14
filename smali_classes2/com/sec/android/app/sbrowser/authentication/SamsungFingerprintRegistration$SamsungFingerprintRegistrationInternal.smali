.class public Lcom/sec/android/app/sbrowser/authentication/SamsungFingerprintRegistration$SamsungFingerprintRegistrationInternal;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/authentication/SamsungFingerprintRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamsungFingerprintRegistrationInternal"
.end annotation


# instance fields
.field private mCallback:Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static create(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)Lcom/sec/android/app/sbrowser/authentication/SamsungFingerprintRegistration$SamsungFingerprintRegistrationInternal;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/SamsungFingerprintRegistration$SamsungFingerprintRegistrationInternal;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/authentication/SamsungFingerprintRegistration$SamsungFingerprintRegistrationInternal;-><init>()V

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/authentication/SamsungFingerprintRegistration$SamsungFingerprintRegistrationInternal;->mCallback:Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;

    return-object v0
.end method

.method private sendResult()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SamsungFingerprintRegistration$SamsungFingerprintRegistrationInternal;->mCallback:Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseFingerprint()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;->onResult(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/SamsungFingerprintRegistration$SamsungFingerprintRegistrationInternal;->sendResult()V

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
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/SamsungFingerprintRegistration$SamsungFingerprintRegistrationInternal;->mCallback:Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "com.samsung.settings.REGISTER_FINGERPRINT"

    invoke-static {p1}, LB/e;->i(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/SamsungFingerprintRegistration$SamsungFingerprintRegistrationInternal;->sendResult()V

    :goto_0
    return-void
.end method
