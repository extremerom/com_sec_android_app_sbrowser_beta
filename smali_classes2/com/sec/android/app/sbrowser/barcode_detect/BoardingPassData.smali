.class public Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAllowListedDomains:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowListedDomainsForDebug:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBoardingPassLangWiseKeyword:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson$BoardingPassLangWiseKeyword;

.field private mBpImageSubstrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFlightRegex:Ljava/lang/String;

.field private mFlightRegexWeight:D

.field private mSeatRegex:Ljava/lang/String;

.field private mSeatRegexWeight:D

.field private mThreshold:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addAllowedDomainsFromDebugAllowlist()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getBoardingPassAllowlist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mAllowListedDomainsForDebug:Ljava/util/HashSet;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mAllowListedDomainsForDebug:Ljava/util/HashSet;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mAllowListedDomainsForDebug:Ljava/util/HashSet;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mAllowListedDomains:Ljava/util/HashSet;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mAllowListedDomainsForDebug:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/m;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/m;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;

    return-object v0
.end method

.method private loadBoardingPassData(Ljava/io/InputStream;)V
    .locals 4

    const-string v0, "BoardingPassData"

    :try_start_0
    new-instance v1, Lcom/google/gson/stream/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;

    invoke-virtual {p1, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, "Populating boarding pass data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;->getAllowListedDomains()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mAllowListedDomains:Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->addAllowedDomainsFromDebugAllowlist()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;->getBoardingPassLangWiseKeyboard()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson$BoardingPassLangWiseKeyword;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mBoardingPassLangWiseKeyword:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson$BoardingPassLangWiseKeyword;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;->getFlightRegex()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mFlightRegex:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;->getFlightRegexWeight()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mFlightRegexWeight:D

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;->getSeatRegex()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mSeatRegex:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;->getSeatRegexWeight()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mSeatRegexWeight:D

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;->getThreshold()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mThreshold:D

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson;->getBpImageSubstrings()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mBpImageSubstrings:Ljava/util/List;

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error parsing boarding pass data"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getAllowListedDomains()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mAllowListedDomains:Ljava/util/HashSet;

    return-object p0
.end method

.method public getBoardingPassLangWiseKeyword()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson$BoardingPassLangWiseKeyword;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mBoardingPassLangWiseKeyword:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassJson$BoardingPassLangWiseKeyword;

    return-object p0
.end method

.method public getBpImageSubstrings()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mBpImageSubstrings:Ljava/util/List;

    return-object p0
.end method

.method public getFlightRegex()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mFlightRegex:Ljava/lang/String;

    return-object p0
.end method

.method public getFlightRegexWeight()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mFlightRegexWeight:D

    return-wide v0
.end method

.method public getSeatRegex()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mSeatRegex:Ljava/lang/String;

    return-object p0
.end method

.method public getSeatRegexWeight()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mSeatRegexWeight:D

    return-wide v0
.end method

.method public getThreshold()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mThreshold:D

    return-wide v0
.end method

.method public loadBoardingPassData()V
    .locals 5

    const-string v0, "Started loading boarding pass data"

    const-string v1, "BoardingPassData"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "boarding_pass_data.json"

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->isExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->loadBoardingPassData(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error loading data from GC : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->z(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :try_start_5
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "boarding_pass/boarding_pass_data.json"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->loadBoardingPassData(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_4

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_3

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error loading data from assets : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->z(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    :goto_5
    return-void
.end method

.method public onBoardingPassDebugAllowlistChanged(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mAllowListedDomains:Ljava/util/HashSet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mAllowListedDomainsForDebug:Ljava/util/HashSet;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mAllowListedDomainsForDebug:Ljava/util/HashSet;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mAllowListedDomainsForDebug:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mAllowListedDomains:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mAllowListedDomainsForDebug:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mAllowListedDomainsForDebug:Ljava/util/HashSet;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mAllowListedDomains:Ljava/util/HashSet;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->mAllowListedDomainsForDebug:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
