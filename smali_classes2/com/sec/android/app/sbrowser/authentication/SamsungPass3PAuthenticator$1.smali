.class Lcom/sec/android/app/sbrowser/authentication/SamsungPass3PAuthenticator$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/authentication/SamsungPass3PAuthenticator;->authenticate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/SamsungPass3PAuthenticator;->a()V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/SamsungPass3PAuthenticator;->a()V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->PPP:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->makePendingResult(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;[B)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/SamsungPass3PAuthenticator;->a()V

    return-void
.end method
