.class public Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$OriginVerificationListener;,
        Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$VerifiedCallback;,
        Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$Natives;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static final HEX_CHAR_LOOKUP:[C


# instance fields
.field private final mListener:Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$OriginVerificationListener;

.field private mNativeOriginVerifier:J

.field private mOrigin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

.field private final mPackageName:Ljava/lang/String;

.field private final mRelation:I

.field private final mSignatureFingerprint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->HEX_CHAR_LOOKUP:[C

    return-void
.end method

.method public constructor <init>(Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$OriginVerificationListener;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mListener:Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$OriginVerificationListener;

    iput-object p2, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mPackageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->getCertificateSHA256FingerprintForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mSignatureFingerprint:Ljava/lang/String;

    iput p3, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mRelation:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;ZLjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->originVerified(ZLjava/lang/Boolean;)V

    return-void
.end method

.method public static addVerifiedOriginForPackage(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;I)V
    .locals 3

    const-string v0, "Adding: %s for %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "TerraceOriginVerifier"

    invoke-static {v2, v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/sec/terrace/browser/customtabs/TinRelationship;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/terrace/browser/customtabs/TinRelationship;-><init>(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;I)V

    invoke-static {v0}, Lcom/sec/terrace/browser/customtabs/TinVerificationResultStore;->addRelationship(Lcom/sec/terrace/browser/customtabs/TinRelationship;)V

    return-void
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->HEX_CHAR_LOOKUP:[C

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkForSavedResult()V
    .locals 5

    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskReads()Lorg/chromium/base/StrictModeContext;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/sec/terrace/browser/customtabs/TinRelationship;

    iget-object v2, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mOrigin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    iget v4, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mRelation:I

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/terrace/browser/customtabs/TinRelationship;-><init>(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;I)V

    invoke-static {v1}, Lcom/sec/terrace/browser/customtabs/TinVerificationResultStore;->isRelationshipSaved(Lcom/sec/terrace/browser/customtabs/TinRelationship;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :goto_0
    invoke-static {v2}, Lcom/sec/terrace/browser/customtabs/TinBrowserServicesMetrics;->recordVerificationResult(I)V

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->originVerified(ZLjava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
.end method

.method public static clearBrowsingData()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/customtabs/TinVerificationResultStore;->clearStoredRelationships()V

    return-void
.end method

.method public static clearCachedVerificationsForTesting()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/customtabs/TinVerificationResultStore;->clearStoredRelationships()V

    return-void
.end method

.method public static getCertificateSHA256FingerprintForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    const-string p0, "X509"

    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    const-string v1, "SHA256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    const-string p0, "TerraceOriginVerifier"

    const-string v1, "Certificate type X509 encoding failed"

    invoke-static {p0, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :catch_1
    :goto_0
    return-object v0
.end method

.method private static getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getPostMessageUriFromVerifiedOrigin(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android-app://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->uri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private onOriginVerificationResult(I)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "TerraceOriginVerifier"

    const-string v0, "Device is offline, checking saved verification result."

    invoke-static {p1, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->checkForSavedResult()V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/sec/terrace/browser/customtabs/TinBrowserServicesMetrics;->recordVerificationResult(I)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->originVerified(ZLjava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/sec/terrace/browser/customtabs/TinBrowserServicesMetrics;->recordVerificationResult(I)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v1, p1}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->originVerified(ZLjava/lang/Boolean;)V

    :goto_0
    return-void
.end method

.method private originVerified(ZLjava/lang/Boolean;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "succeeded"

    goto :goto_0

    :cond_0
    const-string v0, "failed"

    :goto_0
    const-string v1, "TerraceOriginVerifier"

    const-string v2, "Verification %s."

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mOrigin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    iget v2, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mRelation:I

    invoke-static {v0, v1, v2}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->addVerifiedOriginForPackage(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;I)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->saveVerificationResult(Z)V

    iget-object v0, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mListener:Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$OriginVerificationListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mOrigin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$OriginVerificationListener;->onOriginVerified(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;ZLjava/lang/Boolean;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->cleanUp()V

    return-void
.end method

.method private saveVerificationResult(Z)V
    .locals 3

    new-instance v0, Lcom/sec/terrace/browser/customtabs/TinRelationship;

    iget-object v1, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mOrigin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    iget p0, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mRelation:I

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/terrace/browser/customtabs/TinRelationship;-><init>(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;I)V

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/sec/terrace/browser/customtabs/TinVerificationResultStore;->addRelationship(Lcom/sec/terrace/browser/customtabs/TinRelationship;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/sec/terrace/browser/customtabs/TinVerificationResultStore;->removeRelationship(Lcom/sec/terrace/browser/customtabs/TinRelationship;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 6

    iget-wide v0, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mNativeOriginVerifier:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifierJni;->get()Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$Natives;

    move-result-object v0

    iget-wide v4, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mNativeOriginVerifier:J

    invoke-interface {v0, v4, v5, p0}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$Natives;->destroy(JLcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;)V

    iput-wide v2, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mNativeOriginVerifier:J

    return-void
.end method

.method public isValidOrigin(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Z
    .locals 2

    new-instance v0, Lcom/sec/terrace/browser/customtabs/TinRelationship;

    iget-object v1, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mRelation:I

    invoke-direct {v0, v1, p1, p0}, Lcom/sec/terrace/browser/customtabs/TinRelationship;-><init>(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;I)V

    invoke-static {v0}, Lcom/sec/terrace/browser/customtabs/TinVerificationResultStore;->isRelationshipSaved(Lcom/sec/terrace/browser/customtabs/TinRelationship;)Z

    move-result p0

    return p0
.end method

.method public start(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V
    .locals 14
    .param p1    # Lcom/sec/terrace/browser/customtabs/TerraceOrigin;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iput-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mOrigin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string v1, "disable-digital-asset-link-verification-for-url"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "TerraceOriginVerifier"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mOrigin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    new-instance v5, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-direct {v5, v0}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Verification skipped for %s due to command line flag."

    invoke-static {v3, v0, p1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$VerifiedCallback;

    invoke-direct {p1, p0, v2, v4}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$VerifiedCallback;-><init>(Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;ZLjava/lang/Boolean;)V

    invoke-static {p1}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mOrigin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->uri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_8

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->isValidOrigin(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Verification succeeded for %s, it was cached."

    invoke-static {v3, v0, p1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x6

    invoke-static {p1}, Lcom/sec/terrace/browser/customtabs/TinBrowserServicesMetrics;->recordVerificationResult(I)V

    new-instance p1, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$VerifiedCallback;

    invoke-direct {p1, p0, v2, v4}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$VerifiedCallback;-><init>(Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;ZLjava/lang/Boolean;)V

    invoke-static {p1}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    iget-wide v0, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mNativeOriginVerifier:J

    const-wide/16 v6, 0x0

    cmp-long p1, v0, v6

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->cleanUp()V

    :cond_3
    invoke-static {}, Lorg/chromium/content_public/browser/BrowserStartupController;->getInstance()Lorg/chromium/content_public/browser/BrowserStartupController;

    move-result-object p1

    invoke-interface {p1}, Lorg/chromium/content_public/browser/BrowserStartupController;->isNativeStarted()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifierJni;->get()Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$Natives;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$Natives;->init(Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mNativeOriginVerifier:J

    iget p1, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mRelation:I

    if-eq p1, v2, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    :goto_0
    move-object v13, v4

    goto :goto_1

    :cond_5
    const-string v4, "delegate_permission/common.handle_all_urls"

    goto :goto_0

    :cond_6
    const-string v4, "delegate_permission/common.use_as_origin"

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifierJni;->get()Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$Natives;

    move-result-object v6

    iget-wide v7, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mNativeOriginVerifier:J

    iget-object v10, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mPackageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mSignatureFingerprint:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->mOrigin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v9, p0

    invoke-interface/range {v6 .. v13}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$Natives;->verifyOrigin(JLcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    const/4 p1, 0x5

    invoke-static {p1}, Lcom/sec/terrace/browser/customtabs/TinBrowserServicesMetrics;->recordVerificationResult(I)V

    new-instance p1, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$VerifiedCallback;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p0, v5, v0}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$VerifiedCallback;-><init>(Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;ZLjava/lang/Boolean;)V

    invoke-static {p1}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    return-void

    :cond_8
    :goto_2
    const-string v0, "Verification failed for %s as not https."

    invoke-static {v3, v0, p1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x4

    invoke-static {p1}, Lcom/sec/terrace/browser/customtabs/TinBrowserServicesMetrics;->recordVerificationResult(I)V

    new-instance p1, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$VerifiedCallback;

    invoke-direct {p1, p0, v5, v4}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$VerifiedCallback;-><init>(Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;ZLjava/lang/Boolean;)V

    invoke-static {p1}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
