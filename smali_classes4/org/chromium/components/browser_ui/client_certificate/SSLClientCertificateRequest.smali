.class public Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;,
        Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;,
        Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertSelectionFailureDialog;,
        Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$Natives;,
        Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SSLClientCertRequest"


# direct methods
.method public static maybeShowCertSelection(Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;Landroid/security/KeyChainAliasCallback;Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertSelectionFailureDialog;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->choosePrivateKeyAlias()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroid/security/KeyChainAliasCallback;->alias(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertSelectionFailureDialog;->show()V

    :goto_0
    return-void
.end method

.method private static selectClientCertificate(JLorg/chromium/ui/base/WindowAndroid;[Ljava/lang/String;[[BLjava/lang/String;I)Z
    .locals 8
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p2}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p2}, Lorg/chromium/base/ContextUtils;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    const-string v0, "SSLClientCertRequest"

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "Certificate request on GC\'d activity."

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    array-length v3, p4

    if-lez v3, :cond_2

    array-length v3, p4

    new-array v3, v3, [Ljavax/security/auth/x500/X500Principal;

    move v4, v2

    :goto_0
    :try_start_0
    array-length v5, p4

    if-ge v4, v5, :cond_1

    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    aget-object v6, p4, v4

    invoke-direct {v5, v6}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    move-object v4, v3

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception while decoding issuers list: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 p4, 0x0

    move-object v4, p4

    :goto_2
    new-instance p4, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0, p0, p1}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;-><init>(Landroid/content/Context;J)V

    new-instance p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p4

    move-object v3, p3

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;-><init>(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertSelectionFailureDialog;

    invoke-direct {p1, p2}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertSelectionFailureDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p4, p1}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest;->maybeShowCertSelection(Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;Landroid/security/KeyChainAliasCallback;Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertSelectionFailureDialog;)V

    const/4 p0, 0x1

    return p0
.end method
