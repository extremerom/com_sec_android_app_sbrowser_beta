.class public final Lorg/chromium/components/payments/browser_binding/BrowserBoundKeyStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ANDROID_KEY_STORE:Ljava/lang/String; = "AndroidKeyStore"

.field public static final KEYSTORE_ALIAS_PREFIX:Ljava/lang/String; = "spcbbk_sha256ecdsa_"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private containsEs256(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    iget v0, p1, Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;->type:I

    if-nez v0, :cond_0

    iget p1, p1, Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;->algorithmIdentifier:I

    const/4 v0, -0x7

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private createBrowserBoundKey(Ljava/lang/String;)Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;
    .locals 4

    const-string p0, "SpcBbKeyStore"

    invoke-static {}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKeyStore;->getAndroidKeyPairGenerator()Ljava/security/KeyPairGenerator;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v3, 0x4

    invoke-direct {v2, p1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string p1, "SHA-256"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1
    :try_end_0
    .catch Landroid/security/keystore/StrongBoxUnavailableException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/security/keystore/StrongBoxUnavailableException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance p1, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;-><init>(Ljava/security/KeyPair;)V

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Could not initialize key pair generation for browser bound key support."

    invoke-static {p0, v0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Landroid/security/keystore/StrongBoxUnavailableException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    const-string p1, "StrongBox is not available while creating a browser bound key."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static createListOfCredentialParameters([I[I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I)",
            "Ljava/util/List<",
            "Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    new-instance v2, Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    invoke-direct {v2}, Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;-><init>()V

    aget v3, p0, v1

    iput v3, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;->type:I

    aget v3, p1, v1

    iput v3, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;->algorithmIdentifier:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getAndroidKeyPairGenerator()Ljava/security/KeyPairGenerator;
    .locals 3

    :try_start_0
    const-string v0, "EC"

    const-string v1, "AndroidKeyStore"

    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SpcBbKeyStore"

    const-string v2, "Could not create key pair generation for browser bound key support."

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getBrowserBoundKey(Ljava/lang/String;)Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1, p0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    new-instance v0, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;

    new-instance v1, Ljava/security/KeyPair;

    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    invoke-direct {v0, v1}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;-><init>(Ljava/security/KeyPair;)V
    :try_end_0
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p1, "SpcBbKeyStore"

    const-string v0, "Could not load the browser bound key from the key store."

    invoke-static {p1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :catch_1
    return-object p0
.end method

.method public static getInstance()Lorg/chromium/components/payments/browser_binding/BrowserBoundKeyStore;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/payments/browser_binding/BrowserBoundKeyStore;

    invoke-direct {v0}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKeyStore;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getOrCreateBrowserBoundKeyForCredentialId([BLjava/util/List;)Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;",
            ">;)",
            "Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0, p2}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKeyStore;->containsEs256(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "spcbbk_sha256ecdsa_"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKeyStore;->getBrowserBoundKey(Ljava/lang/String;)Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKeyStore;->createBrowserBoundKey(Ljava/lang/String;)Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;

    move-result-object p2

    :cond_1
    return-object p2
.end method
