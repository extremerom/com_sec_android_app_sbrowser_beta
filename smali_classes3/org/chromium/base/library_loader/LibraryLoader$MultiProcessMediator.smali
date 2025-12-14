.class public Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/library_loader/LibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiProcessMediator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile mCreatedIn:I

.field private volatile mInitDone:Z

.field private mLoadAddress:J

.field final synthetic this$0:Lorg/chromium/base/library_loader/LibraryLoader;


# direct methods
.method public constructor <init>(Lorg/chromium/base/library_loader/LibraryLoader;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mCreatedIn:I

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->recordLoadTimeHistogram(J)V

    return-void
.end method

.method private creationAsString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mCreatedIn:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "Child"

    return-object p0

    :cond_1
    const-string p0, "Zygote"

    return-object p0

    :cond_2
    const-string p0, "Browser"

    return-object p0
.end method

.method private getLoadAddress()J
    .locals 3

    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->a(Lorg/chromium/base/library_loader/LibraryLoader;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mLoadAddress:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private recordLoadTimeHistogram(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChromiumAndroidLinker."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->creationAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "LoadTime2"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public ensureInitializedInMainProcess()V
    .locals 6

    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mInitDone:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->e(Lorg/chromium/base/library_loader/LibraryLoader;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->mainProcessIntendsToProvideRelroFd()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-static {v3}, Lorg/chromium/base/library_loader/LibraryLoader;->c(Lorg/chromium/base/library_loader/LibraryLoader;)Lorg/chromium/base/library_loader/Linker;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v2, v4, v5}, Lorg/chromium/base/library_loader/Linker;->ensureInitialized(ZIJ)V

    :cond_2
    iput v1, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mCreatedIn:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mInitDone:Z

    return-void
.end method

.method public initInAppZygote()V
    .locals 5

    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->e(Lorg/chromium/base/library_loader/LibraryLoader;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->mainProcessIntendsToProvideRelroFd()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->c(Lorg/chromium/base/library_loader/LibraryLoader;)Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/base/library_loader/Linker;->ensureInitialized(ZIJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->b(Lorg/chromium/base/library_loader/LibraryLoader;)V

    :goto_0
    iput v1, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mCreatedIn:I

    return-void
.end method

.method public initInChildProcess()V
    .locals 5

    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->e(Lorg/chromium/base/library_loader/LibraryLoader;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mInitDone:Z

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->mainProcessIntendsToProvideRelroFd()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->c(Lorg/chromium/base/library_loader/LibraryLoader;)Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->getLoadAddress()J

    move-result-wide v3

    invoke-virtual {v0, v2, v1, v3, v4}, Lorg/chromium/base/library_loader/Linker;->ensureInitialized(ZIJ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->isLoadedByZygote()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mCreatedIn:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->c(Lorg/chromium/base/library_loader/LibraryLoader;)Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->getLoadAddress()J

    move-result-wide v3

    invoke-virtual {v0, v2, v1, v3, v4}, Lorg/chromium/base/library_loader/Linker;->ensureInitialized(ZIJ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->c(Lorg/chromium/base/library_loader/LibraryLoader;)Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->getLoadAddress()J

    move-result-wide v3

    invoke-virtual {v0, v2, v2, v3, v4}, Lorg/chromium/base/library_loader/Linker;->ensureInitialized(ZIJ)V

    :goto_0
    iget v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mCreatedIn:I

    if-eq v0, v1, :cond_4

    const/4 v0, 0x2

    iput v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mCreatedIn:I

    :cond_4
    iput-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mInitDone:Z

    return-void
.end method

.method public putLoadAddressToBundle(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->e(Lorg/chromium/base/library_loader/LibraryLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-static {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->c(Lorg/chromium/base/library_loader/LibraryLoader;)Lorg/chromium/base/library_loader/Linker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/Linker;->putLoadAddressToBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public putSharedRelrosToBundle(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->e(Lorg/chromium/base/library_loader/LibraryLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-static {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->c(Lorg/chromium/base/library_loader/LibraryLoader;)Lorg/chromium/base/library_loader/Linker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/Linker;->putSharedRelrosToBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public recordLoadThreadTimeHistogram(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChromiumAndroidLinker."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->creationAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ThreadLoadTime"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    return-void
.end method

.method public takeLoadAddressFromBundle(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Lorg/chromium/base/library_loader/Linker;->extractLoadAddressFromBundle(Landroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mLoadAddress:J

    return-void
.end method

.method public takeSharedRelrosFromBundle(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->e(Lorg/chromium/base/library_loader/LibraryLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-static {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->c(Lorg/chromium/base/library_loader/LibraryLoader;)Lorg/chromium/base/library_loader/Linker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/Linker;->takeSharedRelrosFromBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
