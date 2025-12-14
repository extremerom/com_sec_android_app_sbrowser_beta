.class Lcom/sec/android/app/sbrowser/autofill/otp/OtpAutofillHookImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpAutofillHook;


# instance fields
.field private final mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mSamsungPassStore:Lcom/sec/android/app/sbrowser/autofill/otp/OtpStoreDelegate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/authentication/Authenticator;Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/authentication/Authenticator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/otp/OtpAutofillHookImpl;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/otp/OtpAutofillHookImpl;->mSamsungPassStore:Lcom/sec/android/app/sbrowser/autofill/otp/OtpStoreDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/autofill/otp/OtpAutofillHookImpl;ILcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHook$OnFillOtpForm_Response;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/autofill/otp/OtpAutofillHookImpl;->lambda$onFillOtpForm$0(ILcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHook$OnFillOtpForm_Response;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void
.end method

.method private createHookResult(Ljava/lang/String;Z)Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHookResult;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHookResult;

    invoke-direct {p0}, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHookResult;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHookResult;->otp:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHookResult;->isSuccess:Z

    return-object p0
.end method

.method private synthetic lambda$onFillOtpForm$0(ILcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHook$OnFillOtpForm_Response;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 1

    iget-boolean v0, p3, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->success:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/otp/OtpAutofillHookImpl;->mSamsungPassStore:Lcom/sec/android/app/sbrowser/autofill/otp/OtpStoreDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/autofill/otp/OtpStoreDelegate;->getOtpForUser(I)Ljava/lang/String;

    move-result-object p1

    iget-boolean p3, p3, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->success:Z

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/autofill/otp/OtpAutofillHookImpl;->createHookResult(Ljava/lang/String;Z)Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHookResult;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHook$OnFillOtpForm_Response;->call(Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHookResult;)V

    return-void

    :cond_0
    const-string p1, ""

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/autofill/otp/OtpAutofillHookImpl;->createHookResult(Ljava/lang/String;Z)Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHookResult;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHook$OnFillOtpForm_Response;->call(Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHookResult;)V

    return-void
.end method


# virtual methods
.method public onFillOtpForm(ILcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHook$OnFillOtpForm_Response;)V
    .locals 3
    .param p2    # Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHook$OnFillOtpForm_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/SamsungPassAuthenticator;->createOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/otp/OtpAutofillHookImpl;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    new-instance v2, Lcom/sec/android/app/sbrowser/autofill/otp/a;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/otp/a;-><init>(Lcom/sec/android/app/sbrowser/autofill/otp/OtpAutofillHookImpl;ILcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHook$OnFillOtpForm_Response;)V

    invoke-interface {v1, v0, v2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->authenticate(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;)V

    return-void
.end method
