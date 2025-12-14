.class public Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/Authenticator;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mAuthCallback:Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemAuthenticationCallback;

.field private mAuthCancelSignal:Landroid/os/CancellationSignal;

.field private mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

.field private mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

.field private mManager:Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/AuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->createInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->mManager:Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SamsungFingerprintAuthenticator"

    const-string v1, "SemFingerprintManager reflect failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;-><init>(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->mAuthCallback:Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemAuthenticationCallback;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/LockModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->getAuthErrorCode(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->getAuthHelpCode(I)I

    move-result p0

    return p0
.end method

.method private getAuthErrorCode(I)I
    .locals 2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ERROR_TIMEOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ERROR_USER_CANCELED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_1

    const/4 p0, 0x7

    return p0

    :cond_1
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ERROR_LOCKOUT_PERMANENT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_2

    const/16 p0, 0x8

    return p0

    :cond_2
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ERROR_CANCELED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_3

    const/16 p0, 0x9

    return p0

    :cond_3
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ERROR_LOCKOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_4

    const/16 p0, 0xa

    return p0

    :cond_4
    const-string p0, "There is no matched error code : "

    const-string v0, " returned -1"

    const-string v1, "SamsungFingerprintAuthenticator"

    invoke-static {p1, p0, v0, v1}, Landroidx/recyclerview/widget/P;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private getAuthHelpCode(I)I
    .locals 2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ACQUIRED_IMAGER_DIRTY:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ACQUIRED_INSUFFICIENT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ACQUIRED_PARTIAL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ACQUIRED_TOO_FAST:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ACQUIRED_TOO_SLOW:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-string p0, "There is no matched help code : "

    const-string v0, " returned -1"

    const-string v1, "SamsungFingerprintAuthenticator"

    invoke-static {p1, p0, v0, v1}, Landroidx/recyclerview/widget/P;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public cancelAuth()V
    .locals 2

    const-string v0, "cancelAuth"

    const-string v1, "SamsungFingerprintAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/AuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    const-string v0, "Cancel Samsung Fingerprint"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    :cond_0
    return-void
.end method

.method public startAuth(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)V
    .locals 9

    const-string v0, "startAuth"

    const-string v1, "SamsungFingerprintAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    new-instance p2, Landroid/os/CancellationSignal;

    invoke-direct {p2}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    :try_start_0
    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->myUserId()I

    move-result v7

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/auth/AuthParam;->isDesktopMode()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->EXTRA_KEY_PRIVILEGED_FLAG:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {p2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->PRIVILEGED_FLAG_HIDE_AUTHENTICATION_GUIDE_LAYER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, p2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-le p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/auth/AuthParam;->isDarkMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0609c0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0609bf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->EXTRA_KEY_ICON_COLOR:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->EXTRA_KEY_ICON_CONTAINER_COLOR:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {p2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->mManager:Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->mAuthCallback:Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemAuthenticationCallback;

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->authenticate(Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCryptoObject;Landroid/os/CancellationSignal;Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemAuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SemFingerprintManager::authenticate reflect failed : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
