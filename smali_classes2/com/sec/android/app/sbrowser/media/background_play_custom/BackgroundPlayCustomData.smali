.class public final Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\r\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\r\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u0007\u0010\u000bJ\u0017\u0010\r\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000bR$\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R$\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u0014j\u0008\u0012\u0004\u0012\u00020\u0008`\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;",
        "",
        "<init>",
        "()V",
        "Ldb/r;",
        "resetData",
        "initialize",
        "loadCustomData",
        "",
        "data",
        "",
        "(Ljava/lang/String;)Z",
        "url",
        "isBlocked",
        "",
        "value",
        "version",
        "I",
        "getVersion",
        "()I",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "mDataSet",
        "Ljava/util/HashSet;",
        "Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;",
        "mBrowserPreferenceObserver",
        "Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;",
        "Companion",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final sFileLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mBrowserPreferenceObserver:Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mDataSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->Companion:Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->$stable:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->sFileLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->mDataSet:Ljava/util/HashSet;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/device/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->mBrowserPreferenceObserver:Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->initialize()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->mBrowserPreferenceObserver$lambda$0(Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;Ljava/lang/String;)V

    return-void
.end method

.method private static final mBrowserPreferenceObserver$lambda$0(Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pref_background_play_custom_data_time"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->loadCustomData()V

    :cond_0
    return-void
.end method

.method private final resetData()V
    .locals 2

    const-string v0, "BackgroundPlayCustomData"

    const-string v1, "resetData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->version:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->mDataSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->loadCustomData()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->mBrowserPreferenceObserver:Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->mBrowserPreferenceObserver:Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public final isBlocked(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->mDataSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->mDataSet:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :catch_0
    :cond_1
    return v1
.end method

.method public final loadCustomData()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->sFileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->resetData()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "background_play_custom_data"

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->loadCustomData(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "BackgroundPlayCustomData"

    const-string v1, "Failed to load"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final loadCustomData(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "BackgroundPlayCustomData"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomJson;

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :try_start_2
    invoke-static {v2, v3}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p1, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomJson;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomJson;->getHostList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomJson;->getVersion()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->version:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->mDataSet:Ljava/util/HashSet;

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;->version:I

    const-string p1, "Completed to load version "

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-static {v2, p0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
