.class public Lcom/sec/terrace/TerraceApplication;
.super Landroid/app/Application;
.source "SourceFile"


# instance fields
.field private mDidInitializePrivateDirectorySuffix:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/TerraceApplication;->mDidInitializePrivateDirectorySuffix:Z

    return-void
.end method

.method private static isBrowserProcess()Z
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private maybeInitProcessType(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->setLibraryProcessType(I)V

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getProcessName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "privileged_process"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "sandboxed_process"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->setLibraryProcessType(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplication;->isBrowserProcess()Z

    move-result v0

    invoke-static {p0}, Lorg/chromium/base/ContextUtils;->initApplicationContext(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/sec/terrace/TerraceApplication;->maybeInitProcessType(Z)V

    const-string v1, "TerraceApplication.attachBaseContext"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/metrics/TerraceUmaUtils;->recordMainEntryPointTime()V

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceApplication;->initCommandLine()V

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceApplication;->initializePrivateDirectorySuffix()V

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceApplication;->initializeServices()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p1, 0x1

    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->maybeEnableEarlyTracing(Z)V

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    :cond_0
    sget-object p1, Lcom/sec/terrace/ProductConfig;->LOCALES:[Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/ui/base/ResourceBundle;->setAvailablePakLocales([Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object p1

    sget-boolean v2, Lcom/sec/terrace/ProductConfig;->USE_CHROMIUM_LINKER:Z

    invoke-virtual {p1, v2}, Lorg/chromium/base/library_loader/LibraryLoader;->setLinkerImplementation(Z)V

    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->initialize(Landroid/app/Application;)V

    if-eqz v0, :cond_1

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getCommandLineFile()Ljava/lang/String;
    .locals 0

    const-string p0, "/data/local/tmp/terrace-command-line"

    return-object p0
.end method

.method public getPrivateDataDirectorySuffix()Ljava/lang/String;
    .locals 0

    const-string p0, "terrace"

    return-object p0
.end method

.method public initCommandLine()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceCommandLine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/TerraceApplication;->getCommandLineFile()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/TerraceCommandLine;->initFromFile(Ljava/lang/String;)V

    const-string p0, "process-per-tab"

    invoke-static {p0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    const-string p0, "enable-longpress-drag-selection"

    invoke-static {p0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    const-string p0, "enable-adaptive-selection-handle-orientation"

    invoke-static {p0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->isNonMultiDisplayContextOnTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "disable-magnifier"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->navigation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "enable-spatial-navigation"

    invoke-static {p0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public initializePrivateDirectorySuffix()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/TerraceApplication;->mDidInitializePrivateDirectorySuffix:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/TerraceApplication;->mDidInitializePrivateDirectorySuffix:Z

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceApplication;->getPrivateDataDirectorySuffix()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/base/PathUtils;->setPrivateDataDirectorySuffix(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public initializeServices()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-object p0, Lorg/chromium/base/memory/MemoryPressureMonitor;->INSTANCE:Lorg/chromium/base/memory/MemoryPressureMonitor;

    invoke-virtual {p0}, Lorg/chromium/base/memory/MemoryPressureMonitor;->registerComponentCallbacks()V

    return-void
.end method

.method public setVersionCode(J)V
    .locals 0

    sput-wide p1, Lorg/chromium/build/BuildConfig;->VERSION_CODE:J

    return-void
.end method
