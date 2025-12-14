.class public Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;
.implements Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$ManifestParseCallback;
.implements Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$PaymentManifestWebDataServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$AppInfo;,
        Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;
    }
.end annotation


# instance fields
.field private final mAppIdentifiersToCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAtLeastOneManifestFailedToDownloadOrParse:Z

.field private final mCache:Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;

.field private final mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

.field private final mDefaultApplications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloader:Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;

.field private mIsManifestCacheStaleOrUnusable:Z

.field private final mMerchantOrigin:Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

.field private final mMessageDigest:Ljava/security/MessageDigest;

.field private final mMethodName:Lcom/sec/terrace/browser/payments/TerraceGURL;

.field private final mPackageManagerDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;

.field private final mParser:Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;

.field private mPaymentMethodManifestOrigin:Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

.field private mPendingWebAppManifestsCount:I

.field private final mSupportedOrigins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/terrace/browser/payments/TerraceGURL;",
            ">;"
        }
    .end annotation
.end field

.field private final mWebAppManifestsToCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;Lcom/sec/terrace/browser/payments/TerraceGURL;Ljava/util/Set;Ljava/util/Set;Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;)V
    .locals 1
    .param p3    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;",
            "Lcom/sec/terrace/browser/payments/TerraceGURL;",
            "Ljava/util/Set<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/sec/terrace/browser/payments/TerraceGURL;",
            ">;",
            "Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;",
            "Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;",
            "Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;",
            "Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;",
            "Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDefaultApplications:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mAppIdentifiersToCache:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mWebAppManifestsToCache:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMerchantOrigin:Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMethodName:Lcom/sec/terrace/browser/payments/TerraceGURL;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    new-instance p3, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$AppInfo;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$AppInfo;-><init>(I)V

    iput-object p2, p3, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDefaultApplications:Ljava/util/Map;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mSupportedOrigins:Ljava/util/Set;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDownloader:Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCache:Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mParser:Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mPackageManagerDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;

    iput-object p9, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDefaultApplications:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    :try_start_0
    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "PaymentManifest"

    const-string p2, "Unable to generate SHA-256 hashes."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMessageDigest:Ljava/security/MessageDigest;

    return-void
.end method

.method private static byteArrayToString([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, p0, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02x"

    invoke-virtual {v1, v5, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    return-object p0
.end method

.method private static flattenListOfArrays(Ljava/util/List;)[Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;",
            ">;)[",
            "Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v2, [Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;

    move v2, v0

    move v3, v2

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    move v4, v0

    :goto_2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;

    aget-object v5, v5, v4

    aput-object v5, v1, v3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private static setToString(Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private verifyAppWithWebAppManifest([Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget-object v3, p1, v2

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move v5, v1

    :goto_1
    iget-object v6, v3, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;->fingerprints:[[B

    array-length v7, v6

    if-ge v5, v7, :cond_0

    aget-object v6, v6, v5

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_6

    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDefaultApplications:Ljava/util/Map;

    iget-object v5, v3, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$AppInfo;

    if-nez v4, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-wide v5, v4, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$AppInfo;->version:J

    iget-wide v7, v3, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;->minVersion:J

    cmp-long v5, v5, v7

    const-string v6, "\""

    const-string v7, "PaymentManifest"

    if-gez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" version is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v4, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$AppInfo;->version:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", but at least "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v3, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;->minVersion:J

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " is required."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    iget-object v5, v4, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$AppInfo;->sha256CertFingerprints:Ljava/util/Set;

    if-nez v5, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to determine fingerprints of \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;->id:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;->id:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" fingerprints don\'t match the manifest. Expected "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->setToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", but found "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$AppInfo;->sha256CertFingerprints:Ljava/util/Set;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->setToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    iget-object v3, v3, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_6
    return-object v2
.end method


# virtual methods
.method public onManifestDownloadFailure(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mAtLeastOneManifestFailedToDownloadOrParse:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mAtLeastOneManifestFailedToDownloadOrParse:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;->onVerificationError(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mIsManifestCacheStaleOrUnusable:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;->onFinishedVerification()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;->onFinishedUsingResources()V

    return-void
.end method

.method public onManifestParseFailure()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mAtLeastOneManifestFailedToDownloadOrParse:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mAtLeastOneManifestFailedToDownloadOrParse:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mIsManifestCacheStaleOrUnusable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;->onFinishedVerification()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;->onFinishedUsingResources()V

    return-void
.end method

.method public onPaymentMethodManifestDownloadSuccess(Lcom/sec/terrace/browser/payments/TerraceGURL;Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mPaymentMethodManifestOrigin:Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mParser:Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;

    invoke-virtual {p2, p1, p3, p0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;->parsePaymentMethodManifest(Lcom/sec/terrace/browser/payments/TerraceGURL;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$ManifestParseCallback;)V

    return-void
.end method

.method public onPaymentMethodManifestFetched([Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    aget-object v4, p1, v3

    if-nez v4, :cond_0

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mIsManifestCacheStaleOrUnusable:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDownloader:Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMerchantOrigin:Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMethodName:Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-virtual {p1, v0, v1, p0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;->downloadPaymentMethodManifest(Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;Lcom/sec/terrace/browser/payments/TerraceGURL;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;)V

    return-void

    :cond_0
    new-instance v5, Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-direct {v5, v4}, Lcom/sec/terrace/browser/payments/TerraceGURL;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/payments/standard/UrlUtils;->isURLValid(Lcom/sec/terrace/browser/payments/TerraceGURL;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    array-length p1, p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDefaultApplications:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mSupportedOrigins:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mSupportedOrigins:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/payments/TerraceGURL;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMethodName:Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-interface {v1, v3, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;->onValidSupportedOrigin(Lcom/sec/terrace/browser/payments/TerraceGURL;Lcom/sec/terrace/browser/payments/TerraceGURL;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDefaultApplications:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;->onFinishedVerification()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDownloader:Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMerchantOrigin:Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMethodName:Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-virtual {p1, v0, v1, p0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;->downloadPaymentMethodManifest(Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;Lcom/sec/terrace/browser/payments/TerraceGURL;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDefaultApplications:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mPendingWebAppManifestsCount:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDefaultApplications:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCache:Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;

    invoke-virtual {v1, v0, p0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;->getPaymentWebAppManifest(Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$PaymentManifestWebDataServiceCallback;)Z

    move-result v0

    if-nez v0, :cond_6

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mIsManifestCacheStaleOrUnusable:Z

    iput v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mPendingWebAppManifestsCount:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDownloader:Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMerchantOrigin:Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMethodName:Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-virtual {p1, v0, v1, p0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;->downloadPaymentMethodManifest(Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;Lcom/sec/terrace/browser/payments/TerraceGURL;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;)V

    :cond_7
    return-void

    :cond_8
    :goto_3
    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mIsManifestCacheStaleOrUnusable:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDownloader:Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMerchantOrigin:Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMethodName:Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-virtual {p1, v0, v1, p0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;->downloadPaymentMethodManifest(Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;Lcom/sec/terrace/browser/payments/TerraceGURL;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;)V

    return-void
.end method

.method public onPaymentMethodManifestParseSuccess([Lcom/sec/terrace/browser/payments/TerraceGURL;[Lcom/sec/terrace/browser/payments/TerraceGURL;)V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mAppIdentifiersToCache:Ljava/util/Set;

    aget-object v4, p2, v2

    invoke-virtual {v4}, Lcom/sec/terrace/browser/payments/TerraceGURL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mIsManifestCacheStaleOrUnusable:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mSupportedOrigins:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/payments/TerraceGURL;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMethodName:Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-interface {v2, v3, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;->onValidSupportedOrigin(Lcom/sec/terrace/browser/payments/TerraceGURL;Lcom/sec/terrace/browser/payments/TerraceGURL;)V

    goto :goto_1

    :cond_1
    array-length p2, p1

    if-nez p2, :cond_3

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mIsManifestCacheStaleOrUnusable:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;->onFinishedVerification()V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCache:Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMethodName:Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-virtual {p2}, Lcom/sec/terrace/browser/payments/TerraceGURL;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mAppIdentifiersToCache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;->addPaymentMethodManifest(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;->onFinishedUsingResources()V

    return-void

    :cond_3
    array-length p2, p1

    iput p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mPendingWebAppManifestsCount:I

    :goto_2
    array-length p2, p1

    if-ge v1, p2, :cond_5

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mAtLeastOneManifestFailedToDownloadOrParse:Z

    if-eqz p2, :cond_4

    return-void

    :cond_4
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDownloader:Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mPaymentMethodManifestOrigin:Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

    aget-object v2, p1, v1

    invoke-virtual {p2, v0, v2, p0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;->downloadWebAppManifest(Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;Lcom/sec/terrace/browser/payments/TerraceGURL;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public onPaymentWebAppManifestFetched([Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;)V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mIsManifestCacheStaleOrUnusable:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->verifyAppWithWebAppManifest([Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMethodName:Lcom/sec/terrace/browser/payments/TerraceGURL;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDefaultApplications:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$AppInfo;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-interface {v2, v3, v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;->onValidDefaultPaymentApp(Lcom/sec/terrace/browser/payments/TerraceGURL;Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mPendingWebAppManifestsCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mPendingWebAppManifestsCount:I

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;->onFinishedVerification()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDownloader:Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMerchantOrigin:Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMethodName:Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-virtual {p1, v0, v1, p0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;->downloadPaymentMethodManifest(Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;Lcom/sec/terrace/browser/payments/TerraceGURL;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;)V

    return-void

    :cond_4
    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mIsManifestCacheStaleOrUnusable:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mPendingWebAppManifestsCount:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDownloader:Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMerchantOrigin:Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMethodName:Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-virtual {p1, v0, v1, p0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;->downloadPaymentMethodManifest(Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;Lcom/sec/terrace/browser/payments/TerraceGURL;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;)V

    return-void
.end method

.method public onWebAppManifestDownloadSuccess(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mAtLeastOneManifestFailedToDownloadOrParse:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mParser:Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;

    invoke-virtual {v0, p1, p0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;->parseWebAppManifest(Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$ManifestParseCallback;)V

    return-void
.end method

.method public onWebAppManifestParseSuccess([Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;)V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mAtLeastOneManifestFailedToDownloadOrParse:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mAppIdentifiersToCache:Ljava/util/Set;

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mWebAppManifestsToCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mIsManifestCacheStaleOrUnusable:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->verifyAppWithWebAppManifest([Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMethodName:Lcom/sec/terrace/browser/payments/TerraceGURL;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDefaultApplications:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$AppInfo;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;->onValidDefaultPaymentApp(Lcom/sec/terrace/browser/payments/TerraceGURL;Landroid/content/pm/ResolveInfo;)V

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mPendingWebAppManifestsCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mPendingWebAppManifestsCount:I

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mIsManifestCacheStaleOrUnusable:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;->onFinishedVerification()V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCache:Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMethodName:Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/payments/TerraceGURL;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mAppIdentifiersToCache:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;->addPaymentMethodManifest(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCache:Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mWebAppManifestsToCache:Ljava/util/List;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->flattenListOfArrays(Ljava/util/List;)[Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;->addPaymentWebAppManifest([Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;->onFinishedUsingResources()V

    return-void
.end method

.method public verify()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDefaultApplications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMessageDigest:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;->onFinishedVerification()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;->onFinishedUsingResources()V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDefaultApplications:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$AppInfo;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mPackageManagerDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;->getPackageInfoWithSignatures(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget v4, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v6, v4

    iput-wide v6, v2, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$AppInfo;->version:J

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v2, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$AppInfo;->sha256CertFingerprints:Ljava/util/Set;

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :goto_1
    array-length v5, v4

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMessageDigest:Ljava/security/MessageDigest;

    aget-object v6, v4, v3

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    iget-object v5, v2, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$AppInfo;->sha256CertFingerprints:Ljava/util/Set;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDefaultApplications:Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mCache:Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMethodName:Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/payments/TerraceGURL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;->getPaymentMethodManifest(Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$PaymentManifestWebDataServiceCallback;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mIsManifestCacheStaleOrUnusable:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mDownloader:Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMerchantOrigin:Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->mMethodName:Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-virtual {v0, v1, v2, p0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;->downloadPaymentMethodManifest(Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;Lcom/sec/terrace/browser/payments/TerraceGURL;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;)V

    :cond_5
    return-void
.end method
