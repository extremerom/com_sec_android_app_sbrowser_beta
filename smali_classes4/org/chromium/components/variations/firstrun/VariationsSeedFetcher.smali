.class public Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$DateTime;,
        Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;,
        Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$VariationsPlatform;,
        Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedInfo;,
        Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchInfo;,
        Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$DeltaCompression;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final SEED_FETCH_DELTA_COMPRESSION:Ljava/lang/String; = "Variations.FirstRun.DeltaCompression"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SEED_FETCH_RESULT_DELTA_PATCH_EXCEPTION:I = -0x6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SEED_FETCH_RESULT_HISTOGRAM:Ljava/lang/String; = "Variations.FirstRun.SeedFetchResult"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SEED_FETCH_RESULT_INVALID_IM_HEADER:I = -0x5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SEED_FETCH_RESULT_IOEXCEPTION:I = -0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TRAFFIC_ANNOTATION:Lorg/chromium/net/NetworkTrafficAnnotationTag;

.field static final VARIATIONS_INITIALIZED_PREF:Ljava/lang/String; = "variations_initialized"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mDateTime:Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$DateTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "chrome_variations_android"

    const-string v1, "semantics {\n  sender: \"Chrome Variations Service (Android)\"\n  description:\n      \"The variations service is responsible for determining the state of \"\n      \"field trials in Chrome. These field trials typically configure either \"\n      \"A/B experiments, or launched features \u2013 oftentimes, critical security \"\n      \"features.\"\n  trigger:\n    \"This request is made once, on Chrome\'s first run, to determine the \"\n    \"initial state Chrome should be in.\"\n  data: \"None.\"\n  destination: GOOGLE_OWNED_SERVICE\n}\npolicy {\n  cookies_allowed: NO\n  setting:\n    \"Cannot be disabled in Settings. Chrome Variations are an essential part \"\n    \"of Chrome releases.\"\n  chrome_policy {\n    ChromeVariations {\n      ChromeVariations: 2\n    }\n  }\n}"

    invoke-static {v0, v1}, Lorg/chromium/net/NetworkTrafficAnnotationTag;->createComplete(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/NetworkTrafficAnnotationTag;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher;->TRAFFIC_ANNOTATION:Lorg/chromium/net/NetworkTrafficAnnotationTag;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf1/g;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lf1/g;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher;->mDateTime:Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$DateTime;

    return-void
.end method


# virtual methods
.method public getAvailableInstanceManipulations()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string v1, "enable-finch-seed-delta-compression"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "x-bm"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "gzip"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getConnectionString(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object p0

    const-string v0, "variations-server-url"

    invoke-virtual {p0, v0}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->b(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "https://clientservices.googleapis.com/chrome-variations/fastfinch/seed"

    goto :goto_0

    :cond_1
    const-string p0, "https://clientservices.googleapis.com/chrome-variations/seed"

    :goto_0
    const-string v0, "?osname="

    invoke-static {p0, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->d(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "android_webview"

    invoke-static {p0, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string v0, "android"

    invoke-static {p0, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p1}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->e(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->e(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "&restrict="

    invoke-static {p0, v0}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->e(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    invoke-static {p1}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->c(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->c(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "&milestone="

    invoke-static {p0, v0}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->c(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string v1, "fake-variations-channel"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {p1, v0}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->f(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;Ljava/lang/String;)V

    :cond_6
    invoke-static {p1}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->a(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->a(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "&channel="

    invoke-static {p0, v0}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->a(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_7
    return-object p0
.end method

.method public getDateTime()Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$DateTime;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher;->mDateTime:Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$DateTime;

    return-object p0
.end method

.method public getServerConnection(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher;->getConnectionString(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher;->TRAFFIC_ANNOTATION:Lorg/chromium/net/NetworkTrafficAnnotationTag;

    invoke-static {p1, p0}, Lorg/chromium/net/ChromiumNetworkAdapter;->openConnection(Ljava/net/URL;Lorg/chromium/net/NetworkTrafficAnnotationTag;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method public setDateTime(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$DateTime;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher;->mDateTime:Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$DateTime;

    return-void
.end method
