.class public final synthetic Lcom/sec/android/app/sbrowser/autofill/otp/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/autofill/otp/OtpAutofillHookImpl;

.field public final synthetic b:I

.field public final synthetic c:Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHook$OnFillOtpForm_Response;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/autofill/otp/OtpAutofillHookImpl;ILcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHook$OnFillOtpForm_Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/otp/a;->a:Lcom/sec/android/app/sbrowser/autofill/otp/OtpAutofillHookImpl;

    iput p2, p0, Lcom/sec/android/app/sbrowser/autofill/otp/a;->b:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/autofill/otp/a;->c:Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHook$OnFillOtpForm_Response;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/otp/a;->c:Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHook$OnFillOtpForm_Response;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/otp/a;->a:Lcom/sec/android/app/sbrowser/autofill/otp/OtpAutofillHookImpl;

    iget p0, p0, Lcom/sec/android/app/sbrowser/autofill/otp/a;->b:I

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/autofill/otp/OtpAutofillHookImpl;->a(Lcom/sec/android/app/sbrowser/autofill/otp/OtpAutofillHookImpl;ILcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpAutofillHook$OnFillOtpForm_Response;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void
.end method
