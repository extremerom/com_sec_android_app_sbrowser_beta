.class Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/webauthn/cred_man/CredManHelper;->startGetRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Z)I
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


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

.field final synthetic val$frameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

.field final synthetic val$getCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

.field final synthetic val$localBarrier:Lorg/chromium/components/webauthn/Barrier;

.field final synthetic val$localBridge:Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

.field final synthetic val$localErrorCallback:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

.field final synthetic val$options:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;


# direct methods
.method public constructor <init>(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Lorg/chromium/components/webauthn/WebauthnBrowserBridge;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/components/webauthn/Barrier;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/components/webauthn/GetAssertionResponseCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    iput-object p2, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$localBridge:Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    iput-object p3, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$frameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    iput-object p4, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$localBarrier:Lorg/chromium/components/webauthn/Barrier;

    iput-object p5, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$localErrorCallback:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

    iput-object p6, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$options:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iput-object p7, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$getCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/credentials/GetCredentialException;)V
    .locals 3

    invoke-static {p1}, Lorg/chromium/components/autofill/b;->r(Landroid/credentials/GetCredentialException;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " ("

    invoke-static {v0, v1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/chromium/components/autofill/b;->C(Landroid/credentials/GetCredentialException;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CredManHelper"

    const-string v2, "CredMan getCredential call failed: %s"

    invoke-static {v1, v2, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->f(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Z)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->b(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    move-result-object p1

    sget-object v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->CANCEL_PENDING:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-static {p1, v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->e(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$localBridge:Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$frameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-virtual {p1, v0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->cleanupCredManRequest(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$localBarrier:Lorg/chromium/components/webauthn/Barrier;

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Barrier;->onCredManCancelled()V

    return-void

    :cond_0
    const-string p1, "android.credentials.GetCredentialException.TYPE_USER_CANCELED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->b(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    move-result-object p1

    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$localErrorCallback:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;->onResult(ILjava/lang/Integer;)V

    :cond_1
    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->c(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->b(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->reportGetCredentialMetrics(ILorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    goto :goto_0

    :cond_2
    const-string p1, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->c(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->b(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->reportGetCredentialMetrics(ILorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->d(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->d(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->b(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    move-result-object p1

    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$localErrorCallback:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;->onResult(ILjava/lang/Integer;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$localErrorCallback:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;->onResult(ILjava/lang/Integer;)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->c(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->b(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->reportGetCredentialMetrics(ILorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$options:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iget p0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    sget-object p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_SELECTION:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    goto :goto_1

    :cond_6
    sget-object p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    :goto_1
    invoke-static {p1, p0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->e(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/components/autofill/b;->j(Ljava/lang/Throwable;)Landroid/credentials/GetCredentialException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->onError(Landroid/credentials/GetCredentialException;)V

    return-void
.end method

.method public onResult(Landroid/credentials/GetCredentialResponse;)V
    .locals 7

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->b(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    move-result-object v0

    sget-object v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->CANCEL_PENDING:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p1, v2}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->f(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Z)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-static {p1, v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->e(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$localBridge:Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$frameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-virtual {p1, v0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->cleanupCredManRequest(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$localBarrier:Lorg/chromium/components/webauthn/Barrier;

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Barrier;->onCredManCancelled()V

    return-void

    :cond_0
    invoke-static {p1}, Lorg/chromium/components/autofill/b;->f(Landroid/credentials/GetCredentialResponse;)Landroid/credentials/Credential;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/webauthn/cred_man/c;->e(Landroid/credentials/Credential;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1}, Lorg/chromium/components/autofill/b;->f(Landroid/credentials/GetCredentialResponse;)Landroid/credentials/Credential;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/components/webauthn/cred_man/c;->l(Landroid/credentials/Credential;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$localBridge:Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    iget-object v1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$frameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    const-string v2, "androidx.credentials.BUNDLE_KEY_ID"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidx.credentials.BUNDLE_KEY_PASSWORD"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->onPasswordCredentialReceived(Lorg/chromium/content_public/browser/RenderFrameHost;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->c(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->b(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p0}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->reportGetCredentialMetrics(ILorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    return-void

    :cond_1
    const-string p1, "androidx.credentials.BUNDLE_KEY_AUTHENTICATION_RESPONSE_JSON"

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/chromium/components/webauthn/Fido2CredentialRequestJni;->get()Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;->getCredentialResponseFromJson(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v3, 0x1e

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-nez v0, :cond_3

    const-string v0, "CredManHelper"

    const-string v6, "Failed to convert response from CredMan to Mojo object: %s"

    invoke-static {v0, v6, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->c(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->b(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->reportGetCredentialMetrics(ILorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$options:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iget v0, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    if-ne v0, v5, :cond_2

    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_SELECTION:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    :goto_0
    invoke-static {p1, v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->e(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p1, v2}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->f(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Z)V

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$localErrorCallback:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

    invoke-interface {p0, v3, v1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;->onResult(ILjava/lang/Integer;)V

    return-void

    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->deserialize(Ljava/nio/ByteBuffer;)Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

    move-result-object p1
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->a(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)[B

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->info:Lorg/chromium/blink/mojom/CommonCredentialInfo;

    iget-object v1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {v1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->a(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/blink/mojom/CommonCredentialInfo;->clientDataJson:[B

    :cond_4
    iget-object v0, p1, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;

    iget-object v1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$options:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iget-object v3, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

    iget-object v3, v3, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;->appid:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v3, v5

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    iput-boolean v3, v0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->echoAppidExtension:Z

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    iget v1, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    if-ne v1, v5, :cond_6

    sget-object v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_SELECTION:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    goto :goto_2

    :cond_6
    sget-object v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    :goto_2
    invoke-static {v0, v1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->e(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {v0, v5}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->f(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Z)V

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->c(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {v1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->b(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->reportGetCredentialMetrics(ILorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$frameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderFrameHost;->notifyWebAuthnAssertionRequestSucceeded()V

    :cond_7
    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$getCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$getCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    invoke-interface {p0, v2, p1}, Lorg/chromium/components/webauthn/GetAssertionResponseCallback;->onSignResponse(ILorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;)V

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->g(Lorg/chromium/mojo/bindings/DeserializationException;)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->c(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->b(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->reportGetCredentialMetrics(ILorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$options:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iget v0, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    if-ne v0, v5, :cond_8

    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_SELECTION:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    goto :goto_3

    :cond_8
    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    :goto_3
    invoke-static {p1, v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->e(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p1, v2}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->f(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Z)V

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->val$localErrorCallback:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

    invoke-interface {p0, v3, v1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;->onResult(ILjava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/components/autofill/b;->m(Ljava/lang/Object;)Landroid/credentials/GetCredentialResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$3;->onResult(Landroid/credentials/GetCredentialResponse;)V

    return-void
.end method
