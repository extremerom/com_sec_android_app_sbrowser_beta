.class Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/webauthn/cred_man/CredManHelper;->startMakeRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/MakeCredentialResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

.field final synthetic val$errorCallback:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

.field final synthetic val$makeCallback:Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;

.field final synthetic val$options:Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;


# direct methods
.method public constructor <init>(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    iput-object p2, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->val$errorCallback:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

    iput-object p3, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->val$options:Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;

    iput-object p4, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->val$makeCallback:Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/credentials/CreateCredentialException;)V
    .locals 3

    invoke-static {p1}, Lorg/chromium/components/autofill/b;->q(Landroid/credentials/CreateCredentialException;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " ("

    invoke-static {v0, v1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/chromium/components/autofill/b;->B(Landroid/credentials/CreateCredentialException;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CredManHelper"

    const-string v2, "CredMan CreateCredential call failed: %s"

    invoke-static {v1, v2, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "android.credentials.CreateCredentialException.TYPE_USER_CANCELED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->val$errorCallback:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;->onResult(ILjava/lang/Integer;)V

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->c(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->recordCredManCreateRequestHistogram(I)V

    goto :goto_0

    :cond_0
    const-string p1, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_STATE_ERROR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->val$errorCallback:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;->onResult(ILjava/lang/Integer;)V

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->c(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->recordCredManCreateRequestHistogram(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->val$errorCallback:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;->onResult(ILjava/lang/Integer;)V

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->c(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->recordCredManCreateRequestHistogram(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/components/autofill/b;->a(Ljava/lang/Throwable;)Landroid/credentials/CreateCredentialException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->onError(Landroid/credentials/CreateCredentialException;)V

    return-void
.end method

.method public onResult(Landroid/credentials/CreateCredentialResponse;)V
    .locals 5

    invoke-static {p1}, Lorg/chromium/components/autofill/b;->o(Landroid/credentials/CreateCredentialResponse;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "androidx.credentials.BUNDLE_KEY_REGISTRATION_RESPONSE_JSON"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/chromium/components/webauthn/Fido2CredentialRequestJni;->get()Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;->makeCredentialResponseFromJson(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x1e

    if-nez v0, :cond_0

    const-string v0, "CredManHelper"

    const-string v4, "Failed to convert response from CredMan to Mojo object: %s"

    invoke-static {v0, v4, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->val$errorCallback:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

    invoke-interface {p1, v3, v2}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;->onResult(ILjava/lang/Integer;)V

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->c(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->recordCredManCreateRequestHistogram(I)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->deserialize(Ljava/nio/ByteBuffer;)Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;

    move-result-object p1
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->a(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->info:Lorg/chromium/blink/mojom/CommonCredentialInfo;

    iget-object v1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {v1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->a(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/blink/mojom/CommonCredentialInfo;->clientDataJson:[B

    :cond_1
    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->val$options:Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;

    iget-boolean v0, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->credProps:Z

    iput-boolean v0, p1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->echoCredProps:Z

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->val$makeCallback:Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->val$makeCallback:Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;->onRegisterResponse(ILorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;)V

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->c(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->recordCredManCreateRequestHistogram(I)V

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->g(Lorg/chromium/mojo/bindings/DeserializationException;)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->val$errorCallback:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

    invoke-interface {p1, v3, v2}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;->onResult(ILjava/lang/Integer;)V

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->c(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->recordCredManCreateRequestHistogram(I)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/components/autofill/b;->e(Ljava/lang/Object;)Landroid/credentials/CreateCredentialResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$1;->onResult(Landroid/credentials/CreateCredentialResponse;)V

    return-void
.end method
