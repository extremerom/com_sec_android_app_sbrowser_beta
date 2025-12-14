.class public Lorg/chromium/content/browser/font/AndroidFontLookupImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/AndroidFontLookup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/font/AndroidFontLookupImpl$Factory;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final FETCH_ALL_FONT_FILES_HISTOGRAM:Ljava/lang/String; = "Android.FontLookup.FetchAllFontFiles.Time"

.field static final GMS_FONT_REQUEST_HISTOGRAM:Ljava/lang/String; = "Android.FontLookup.GmsFontRequest.Time"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MATCH_LOCAL_FONT_BY_UNIQUE_NAME_HISTOGRAM:Ljava/lang/String; = "Android.FontLookup.MatchLocalFontByUniqueName.Time"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mExpectedFonts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFetchedFontCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mFontsContract:Lorg/chromium/content/browser/font/FontsContractWrapper;

.field private final mFullFontNameToQuery:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskRunner:Lorg/chromium/base/task/SequencedTaskRunner;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lorg/chromium/content/browser/font/FontsContractWrapper;

    invoke-direct {v0}, Lorg/chromium/content/browser/font/FontsContractWrapper;-><init>()V

    invoke-static {}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->createFullFontNameToQueryMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/font/FontsContractWrapper;Ljava/util/Map;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/font/FontsContractWrapper;Ljava/util/Map;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/chromium/content/browser/font/FontsContractWrapper;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mFetchedFontCache:Ljava/util/Map;

    const/4 v0, 0x5

    invoke-static {v0}, Lorg/chromium/base/task/PostTask;->createSequencedTaskRunner(I)Lorg/chromium/base/task/SequencedTaskRunner;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mTaskRunner:Lorg/chromium/base/task/SequencedTaskRunner;

    iput-object p1, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mFontsContract:Lorg/chromium/content/browser/font/FontsContractWrapper;

    iput-object p3, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mFullFontNameToQuery:Ljava/util/Map;

    new-instance p1, Ljava/util/HashSet;

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mExpectedFonts:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/blink/mojom/AndroidFontLookup$MatchLocalFontByUniqueName_Response;Lorg/chromium/mojo_base/mojom/ReadOnlyFile;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->lambda$matchLocalFontByUniqueName$0(Lorg/chromium/blink/mojom/AndroidFontLookup$MatchLocalFontByUniqueName_Response;Lorg/chromium/mojo_base/mojom/ReadOnlyFile;)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/content/browser/font/AndroidFontLookupImpl;Ljava/lang/String;Lorg/chromium/mojo/system/Core;JLjava/util/concurrent/Executor;Lorg/chromium/blink/mojom/AndroidFontLookup$MatchLocalFontByUniqueName_Response;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->lambda$matchLocalFontByUniqueName$1(Ljava/lang/String;Lorg/chromium/mojo/system/Core;JLjava/util/concurrent/Executor;Lorg/chromium/blink/mojom/AndroidFontLookup$MatchLocalFontByUniqueName_Response;)V

    return-void
.end method

.method public static synthetic c(Lorg/chromium/blink/mojom/AndroidFontLookup$FetchAllFontFiles_Response;Ljava/util/HashMap;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->lambda$fetchAllFontFiles$2(Lorg/chromium/blink/mojom/AndroidFontLookup$FetchAllFontFiles_Response;Ljava/util/HashMap;)V

    return-void
.end method

.method private static createFontQuery(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&weight="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&besteffort=false"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createFullFontNameToQueryMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Google Sans"

    const/16 v2, 0x190

    invoke-static {v1, v2}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->createFontQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "google sans regular"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x1f4

    invoke-static {v1, v3}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->createFontQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "google sans medium"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x2bc

    invoke-static {v1, v3}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->createFontQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "google sans bold"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Noto Color Emoji Compat"

    invoke-static {v1, v2}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->createFontQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "noto color emoji compat"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Google Sans Flex"

    invoke-static {v1, v2}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->createFontQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google sans flex regular"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic d(Lorg/chromium/content/browser/font/AndroidFontLookupImpl;Lorg/chromium/mojo/system/Core;JLjava/util/concurrent/Executor;Lorg/chromium/blink/mojom/AndroidFontLookup$FetchAllFontFiles_Response;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->lambda$fetchAllFontFiles$3(Lorg/chromium/mojo/system/Core;JLjava/util/concurrent/Executor;Lorg/chromium/blink/mojom/AndroidFontLookup$FetchAllFontFiles_Response;)V

    return-void
.end method

.method private fetchFontInBackground(Ljava/lang/String;Lorg/chromium/mojo/system/Core;)Lorg/chromium/mojo_base/mojom/ReadOnlyFile;
    .locals 1

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->tryFetchFont(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mExpectedFonts:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lorg/chromium/mojo_base/mojom/ReadOnlyFile;

    invoke-direct {p0}, Lorg/chromium/mojo_base/mojom/ReadOnlyFile;-><init>()V

    invoke-interface {p2, v0}, Lorg/chromium/mojo/system/Core;->wrapFileDescriptor(Landroid/os/ParcelFileDescriptor;)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/mojo_base/mojom/ReadOnlyFile;->fd:Lorg/chromium/mojo/system/UntypedHandle;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/mojo_base/mojom/ReadOnlyFile;->async:Z

    return-object p0
.end method

.method private static synthetic lambda$fetchAllFontFiles$2(Lorg/chromium/blink/mojom/AndroidFontLookup$FetchAllFontFiles_Response;Ljava/util/HashMap;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/AndroidFontLookup$FetchAllFontFiles_Response;->call(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$fetchAllFontFiles$3(Lorg/chromium/mojo/system/Core;JLjava/util/concurrent/Executor;Lorg/chromium/blink/mojom/AndroidFontLookup$FetchAllFontFiles_Response;)V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mExpectedFonts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-direct {p0, v4, p1}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->fetchFontInBackground(Ljava/lang/String;Lorg/chromium/mojo/system/Core;)Lorg/chromium/mojo_base/mojom/ReadOnlyFile;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sub-long/2addr p0, p2

    const-string p2, "Android.FontLookup.FetchAllFontFiles.Time"

    invoke-static {p2, p0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    new-instance p0, Lcom/sec/android/app/sbrowser/widget/a;

    const/16 p1, 0xe

    invoke-direct {p0, p1, p5, v0}, Lcom/sec/android/app/sbrowser/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$matchLocalFontByUniqueName$0(Lorg/chromium/blink/mojom/AndroidFontLookup$MatchLocalFontByUniqueName_Response;Lorg/chromium/mojo_base/mojom/ReadOnlyFile;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/AndroidFontLookup$MatchLocalFontByUniqueName_Response;->call(Lorg/chromium/mojo_base/mojom/ReadOnlyFile;)V

    return-void
.end method

.method private synthetic lambda$matchLocalFontByUniqueName$1(Ljava/lang/String;Lorg/chromium/mojo/system/Core;JLjava/util/concurrent/Executor;Lorg/chromium/blink/mojom/AndroidFontLookup$MatchLocalFontByUniqueName_Response;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->fetchFontInBackground(Ljava/lang/String;Lorg/chromium/mojo/system/Core;)Lorg/chromium/mojo_base/mojom/ReadOnlyFile;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sub-long/2addr p1, p3

    const-string p3, "Android.FontLookup.MatchLocalFontByUniqueName.Time"

    invoke-static {p3, p1, p2}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    new-instance p1, Lcom/sec/android/app/sbrowser/widget/a;

    const/16 p2, 0xf

    invoke-direct {p1, p2, p6, p0}, Lcom/sec/android/app/sbrowser/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p5, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private tryFetchFont(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 8

    iget-object v0, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mFetchedFontCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {v0}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mFetchedFontCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mFullFontNameToQuery:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "AndroidFontLookup"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string p0, "Query format not found for full font name: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_1
    iget-object v3, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mExpectedFonts:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p0, "Skipping fetch for font that previously failed: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_2
    new-instance v3, Lc1/c;

    sget v4, Lorg/chromium/content/R$array;->ui_com_google_android_gms_fonts_certs:I

    invoke-direct {v3, v0, v4}, Lc1/c;-><init>(Ljava/lang/String;I)V

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mFontsContract:Lorg/chromium/content/browser/font/FontsContractWrapper;

    iget-object v6, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v6, v2, v3}, Lorg/chromium/content/browser/font/FontsContractWrapper;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Lc1/c;)Lc1/h;

    move-result-object v0

    const-string v3, "Android.FontLookup.GmsFontRequest.Time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v3, v6, v7}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    iget v3, v0, Lc1/h;->a:I

    if-eqz v3, :cond_3

    const-string p0, "Font fetch failed with status code: %d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :catch_1
    move-exception p0

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lc1/h;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc1/i;

    array-length v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const-string p0, "Font fetch did not return a unique result: length = %d"

    array-length p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_4
    aget-object v0, v0, v3

    iget v3, v0, Lc1/i;->e:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, v0, Lc1/i;->a:Landroid/net/Uri;

    if-eqz v3, :cond_5

    :try_start_2
    const-string p0, "Returned font has failed status code: %d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_5
    iget-object v3, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-nez v3, :cond_6

    const-string p0, "Unable to open font file at: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v3}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    iget-object p0, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mFetchedFontCache:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Failed to get font with: %s"

    invoke-static {v1, p1, p0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public fetchAllFontFiles(Lorg/chromium/blink/mojom/AndroidFontLookup$FetchAllFontFiles_Response;)V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImpl;->getInstance()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/mojo/bindings/ExecutorFactory;->getExecutorForCurrentThread(Lorg/chromium/mojo/system/Core;)Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v7, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mTaskRunner:Lorg/chromium/base/task/SequencedTaskRunner;

    new-instance v8, Lcom/sec/android/app/sbrowser/extensions/a;

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/extensions/a;-><init>(Lorg/chromium/content/browser/font/AndroidFontLookupImpl;Lorg/chromium/mojo/system/Core;JLjava/util/concurrent/Executor;Lorg/chromium/blink/mojom/AndroidFontLookup$FetchAllFontFiles_Response;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getUniqueNameLookupTable(Lorg/chromium/blink/mojom/AndroidFontLookup$GetUniqueNameLookupTable_Response;)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mExpectedFonts:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lorg/chromium/blink/mojom/AndroidFontLookup$GetUniqueNameLookupTable_Response;->call([Ljava/lang/String;)V

    return-void
.end method

.method public matchLocalFontByUniqueName(Ljava/lang/String;Lorg/chromium/blink/mojom/AndroidFontLookup$MatchLocalFontByUniqueName_Response;)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImpl;->getInstance()Lorg/chromium/mojo/system/Core;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/mojo/bindings/ExecutorFactory;->getExecutorForCurrentThread(Lorg/chromium/mojo/system/Core;)Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v8, p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->mTaskRunner:Lorg/chromium/base/task/SequencedTaskRunner;

    new-instance v9, Lorg/chromium/components/webauthn/f;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/chromium/components/webauthn/f;-><init>(Lorg/chromium/content/browser/font/AndroidFontLookupImpl;Ljava/lang/String;Lorg/chromium/mojo/system/Core;JLjava/util/concurrent/Executor;Lorg/chromium/blink/mojom/AndroidFontLookup$MatchLocalFontByUniqueName_Response;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    return-void
.end method
