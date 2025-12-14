.class Lcom/sec/android/app/sbrowser/autofill/otp/OtpModuleLoaderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpModuleLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOtpAutofillHook()Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpAutofillHook;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;->getInstance()Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/otp/OtpAutofillHookImpl;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/autofill/otp/OtpAutofillHookImpl;-><init>(Lcom/sec/android/app/sbrowser/authentication/Authenticator;Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;)V

    return-object v1
.end method

.method public getOtpStore()Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpStore;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;->getInstance()Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/otp/OtpStoreImpl;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/otp/OtpStoreImpl;-><init>(Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;)V

    return-object v0
.end method
