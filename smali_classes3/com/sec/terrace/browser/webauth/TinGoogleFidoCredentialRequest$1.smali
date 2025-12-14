.class Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LR5/e;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;->this$0:Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;Lq5/a;Landroid/app/Activity;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;->lambda$onSuccess$0(Lq5/a;Landroid/app/Activity;Ljava/lang/Integer;)V

    return-void
.end method

.method private lambda$onSuccess$0(Lq5/a;Landroid/app/Activity;Ljava/lang/Integer;)V
    .locals 7

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    check-cast p1, LA5/u;

    iget-object p1, p1, LA5/u;->a:Landroid/app/PendingIntent;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No PendingIntent available"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "Fido2Request"

    const-string p2, "Failed to send Fido2 register request to Google Play Services."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;->this$0:Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;

    invoke-static {p0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->f(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lq5/a;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;->onSuccess(Lq5/a;)V

    return-void
.end method

.method public onSuccess(Lq5/a;)V
    .locals 5

    move-object v0, p1

    check-cast v0, LA5/u;

    iget-object v0, v0, LA5/u;->a:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Fido2Request"

    if-nez v0, :cond_1

    const-string p1, "Didn\'t receive a pending intent."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;->this$0:Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;

    invoke-static {p0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->f(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;->this$0:Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;

    invoke-static {v0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->c(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;->this$0:Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;

    invoke-static {v0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->b(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->e(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;Lorg/chromium/ui/base/WindowAndroid;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;->this$0:Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;

    invoke-static {v0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->c(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "Couldn\'t get WindowAndroid."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;->this$0:Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;

    invoke-static {p0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->f(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;->this$0:Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;

    invoke-static {v0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->c(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_3

    const-string p1, "Null activity."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;->this$0:Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;

    invoke-static {p0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->f(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;)V

    return-void

    :cond_3
    new-instance v2, Lcom/sec/terrace/browser/webauth/b;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/terrace/browser/webauth/b;-><init>(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;Lq5/a;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;->this$0:Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->d(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;J)V

    iget-object p1, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;->this$0:Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;

    invoke-static {p1}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->c(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;->this$0:Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v3}, Lorg/chromium/ui/base/WindowAndroid;->showCancelableIntent(Lorg/chromium/base/Callback;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    const-string p1, "Failed to send Fido2 request to Google Play Services."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;->this$0:Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;

    invoke-static {p0}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;->f(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest;)V

    goto :goto_1

    :cond_4
    const-string p0, "Sent a Fido2 request to Google Play Services."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
