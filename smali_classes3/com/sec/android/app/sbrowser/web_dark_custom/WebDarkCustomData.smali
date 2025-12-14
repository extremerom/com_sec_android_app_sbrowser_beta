.class public Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final sFileLock:Ljava/lang/Object;


# instance fields
.field private mDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Path;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScript:Ljava/lang/String;

.field private mScriptForPCS:Ljava/lang/String;

.field private mScriptToRemove:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->sFileLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->loadCustomData()Z

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/o;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/o;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;

    return-object v0
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Path;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mDataMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mDataMap:Ljava/util/HashMap;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCustomScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mScript:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mDataMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "internet-extension"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "/"

    const/16 v2, 0x15

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mDataMap:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Path;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Path;->getPattern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Path;->getApplyPCS()Z

    move-result p1

    const-string v0, ";"

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mScriptToRemove:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mScriptForPCS:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Path;->getCssForHCM()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Path;->getCss()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mScriptToRemove:Ljava/lang/String;

    return-object p0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mScriptToRemove:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mScript:Ljava/lang/String;

    const-string v0, "___style___"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    return-object v1
.end method

.method public getRemoveScript()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mScriptToRemove:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mVersion:I

    return p0
.end method

.method public loadCustomData()Z
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->sFileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomUtils;->getCustomFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->loadCustomData(Ljava/io/InputStream;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_0
    :try_start_7
    const-string p0, "WebDarkCustomData"

    const-string v1, "Failed to load"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public loadCustomData(Ljava/io/InputStream;)Z
    .locals 4

    const/4 v0, 0x0

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

    const-class v2, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson;

    invoke-virtual {p1, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson;->getList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->resetData()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mVersion:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson;->getScript()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mScript:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson;->getScriptToRemove()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mScriptToRemove:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson;->getScriptForPCS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mScriptForPCS:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Data;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Data;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Data;->getPaths()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->addData(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Completed to load version "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson;->getVersion()I

    move-result p1

    const-string v0, "WebDarkCustomData"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return v0
.end method

.method public resetData()V
    .locals 2

    const-string v0, "WebDarkCustomData"

    const-string v1, "resetData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mVersion:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mScript:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mScriptToRemove:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mDataMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->mScriptForPCS:Ljava/lang/String;

    return-void
.end method

.method public writeFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->sFileLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    const-string v0, "web_dark_custom/web_dark_custom_data.json"

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
