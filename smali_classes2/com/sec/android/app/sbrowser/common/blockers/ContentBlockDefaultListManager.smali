.class public Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager$LazyHolder;
    }
.end annotation


# instance fields
.field private mDefaultList:Ljava/nio/ByteBuffer;

.field private mIsInitialized:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager$LazyHolder;->a()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;

    move-result-object v0

    return-object v0
.end method

.method private initDefaultList(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFileUtils;->getDefaultFilter(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;->updateDefaultList(Landroid/content/Context;)V

    return v2

    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;->mDefaultList:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;->mDefaultList:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez p0, :cond_1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    return v2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
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
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "initDefaultList Exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;->mDefaultList:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;->mDefaultList:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;->mIsInitialized:Z

    :cond_0
    return-void
.end method

.method public initialize(Landroid/content/Context;Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;->mIsInitialized:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;->initDefaultList(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;->mIsInitialized:Z

    :cond_1
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockDefaultListManager;->mIsInitialized:Z

    return p0
.end method
