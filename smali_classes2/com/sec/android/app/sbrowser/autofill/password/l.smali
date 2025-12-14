.class public final synthetic Lcom/sec/android/app/sbrowser/autofill/password/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;ILjava/lang/String;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/password/l;->a:Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;

    iput p2, p0, Lcom/sec/android/app/sbrowser/autofill/password/l;->b:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/autofill/password/l;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/autofill/password/l;->d:Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/l;->a:Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;

    iget v1, p0, Lcom/sec/android/app/sbrowser/autofill/password/l;->b:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/autofill/password/l;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/l;->d:Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;->a(Lcom/sec/android/app/sbrowser/autofill/password/PasswordAutofillHookImpl;ILjava/lang/String;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillHook$OnFillPasswordForm_Response;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void
.end method
