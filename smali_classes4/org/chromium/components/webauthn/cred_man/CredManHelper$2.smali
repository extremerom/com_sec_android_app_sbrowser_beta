.class Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/webauthn/cred_man/CredManHelper;->startPrefetchRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Lorg/chromium/components/webauthn/Barrier;Z)V
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

.field final synthetic val$clientDataHash:[B

.field final synthetic val$clientDataJson:[B

.field final synthetic val$frameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

.field final synthetic val$getCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

.field final synthetic val$ignoreGpm:Z

.field final synthetic val$localBarrier:Lorg/chromium/components/webauthn/Barrier;

.field final synthetic val$localBridge:Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

.field final synthetic val$localErrorCallback:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

.field final synthetic val$options:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

.field final synthetic val$originString:Ljava/lang/String;

.field final synthetic val$startTimeMs:J


# direct methods
.method public constructor <init>(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Lorg/chromium/components/webauthn/Barrier;Lorg/chromium/components/webauthn/WebauthnBrowserBridge;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;ZJ)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    iput-object p2, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$localBarrier:Lorg/chromium/components/webauthn/Barrier;

    iput-object p3, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$localBridge:Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    iput-object p4, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$frameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    iput-object p5, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$options:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iput-object p6, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$originString:Ljava/lang/String;

    iput-object p7, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$clientDataJson:[B

    iput-object p8, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$clientDataHash:[B

    iput-object p9, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$getCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    iput-object p10, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$localErrorCallback:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

    iput-boolean p11, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$ignoreGpm:Z

    iput-wide p12, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$startTimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;Lorg/chromium/components/webauthn/WebauthnBrowserBridge;Lorg/chromium/content_public/browser/RenderFrameHost;ZZLorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Z)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->lambda$onResult$1(Lorg/chromium/components/webauthn/WebauthnBrowserBridge;Lorg/chromium/content_public/browser/RenderFrameHost;ZZLorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Z)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;ZLjava/lang/Boolean;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->lambda$onResult$0(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;ZLjava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$onResult$0(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;ZLjava/lang/Boolean;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->setRequestPasswords(Z)V

    iget-object v3, v0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->startGetRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Z)I

    return-void
.end method

.method private synthetic lambda$onResult$1(Lorg/chromium/components/webauthn/WebauthnBrowserBridge;Lorg/chromium/content_public/browser/RenderFrameHost;ZZLorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Z)V
    .locals 11

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v10, Lorg/chromium/components/webauthn/cred_man/b;

    move-object v1, v10

    move-object v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    invoke-direct/range {v1 .. v9}, Lorg/chromium/components/webauthn/cred_man/b;-><init>(Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Z)V

    move-object v1, p1

    move-object v2, p2

    invoke-virtual {p1, p2, v0, v10}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->onCredManConditionalRequestPending(Lorg/chromium/content_public/browser/RenderFrameHost;ZLorg/chromium/base/Callback;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/credentials/GetCredentialException;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/chromium/components/autofill/b;->r(Landroid/credentials/GetCredentialException;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/chromium/components/autofill/b;->C(Landroid/credentials/GetCredentialException;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CredManHelper"

    const-string v1, "CredMan prepareGetCredential call failed: %s"

    invoke-static {v0, v1, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-static {p1, v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->e(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    iget-object p1, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$localBarrier:Lorg/chromium/components/webauthn/Barrier;

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lorg/chromium/components/webauthn/Barrier;->onCredManFailed(I)V

    iget-object p0, p0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->c(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->recordCredmanPrepareRequestHistogram(I)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/components/autofill/b;->j(Ljava/lang/Throwable;)Landroid/credentials/GetCredentialException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->onError(Landroid/credentials/GetCredentialException;)V

    return-void
.end method

.method public onResult(Landroid/credentials/PrepareGetCredentialResponse;)V
    .locals 16

    move-object/from16 v13, p0

    iget-object v0, v13, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->b(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    move-result-object v0

    sget-object v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->CANCEL_PENDING:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    if-ne v0, v1, :cond_0

    iget-object v0, v13, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    sget-object v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-static {v0, v1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->e(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    iget-object v0, v13, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$localBridge:Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    iget-object v1, v13, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$frameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-virtual {v0, v1}, Lorg/chromium/components/webauthn/WebauthnBrowserBridge;->cleanupCredManRequest(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    return-void

    :cond_0
    iget-object v0, v13, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {v0}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->b(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    move-result-object v0

    sget-object v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_CREDENTIAL_LIST:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CredMan prepareGetCredential request received a response while the state is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v13, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {v1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->b(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Ignoring the response."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredManHelper"

    invoke-static {v1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/chromium/components/autofill/b;->z(Landroid/credentials/PrepareGetCredentialResponse;)Z

    move-result v14

    invoke-static/range {p1 .. p1}, Lorg/chromium/components/autofill/b;->D(Landroid/credentials/PrepareGetCredentialResponse;)Z

    move-result v5

    iget-object v0, v13, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    sget-object v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_SELECTION:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-static {v0, v1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->e(Lorg/chromium/components/webauthn/cred_man/CredManHelper;Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V

    iget-object v15, v13, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$localBarrier:Lorg/chromium/components/webauthn/Barrier;

    iget-object v2, v13, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$localBridge:Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    iget-object v3, v13, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$frameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    iget-object v6, v13, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$options:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iget-object v7, v13, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$originString:Ljava/lang/String;

    iget-object v8, v13, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$clientDataJson:[B

    iget-object v9, v13, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$clientDataHash:[B

    iget-object v10, v13, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$getCallback:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    iget-object v11, v13, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$localErrorCallback:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

    iget-boolean v12, v13, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$ignoreGpm:Z

    new-instance v4, Lorg/chromium/components/webauthn/cred_man/a;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v13, v4

    move v4, v14

    invoke-direct/range {v0 .. v12}, Lorg/chromium/components/webauthn/cred_man/a;-><init>(Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;Lorg/chromium/components/webauthn/WebauthnBrowserBridge;Lorg/chromium/content_public/browser/RenderFrameHost;ZZLorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Z)V

    invoke-virtual {v15, v13}, Lorg/chromium/components/webauthn/Barrier;->onCredManSuccessful(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {v1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->c(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    move-result-object v1

    if-eqz v14, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->recordCredmanPrepareRequestHistogram(I)V

    iget-object v1, v0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->this$0:Lorg/chromium/components/webauthn/cred_man/CredManHelper;

    invoke-static {v1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper;->c(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->val$startTimeMs:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;->recordCredmanPrepareRequestDuration(JZ)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/components/autofill/b;->n(Ljava/lang/Object;)Landroid/credentials/PrepareGetCredentialResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->onResult(Landroid/credentials/PrepareGetCredentialResponse;)V

    return-void
.end method
