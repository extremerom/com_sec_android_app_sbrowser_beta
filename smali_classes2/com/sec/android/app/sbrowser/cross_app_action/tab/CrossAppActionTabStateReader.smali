.class public final Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader$Companion;,
        Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader$OnTabStateReadCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001f B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\'\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001d\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0015\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u001aR\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Ljava/io/DataInputStream;",
        "stream",
        "Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;",
        "version",
        "",
        "standardCount",
        "Ldb/r;",
        "readSavedStateFileInternal",
        "(Ljava/io/DataInputStream;Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;I)V",
        "instanceId",
        "",
        "fileName",
        "setFile",
        "(ILjava/lang/String;)Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;",
        "Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader$OnTabStateReadCallback;",
        "callback",
        "setCallback",
        "(Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader$OnTabStateReadCallback;)Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;",
        "read",
        "()V",
        "Landroid/content/Context;",
        "mFileName",
        "Ljava/lang/String;",
        "mCallback",
        "Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader$OnTabStateReadCallback;",
        "Companion",
        "OnTabStateReadCallback",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mCallback:Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader$OnTabStateReadCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mFileName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;->Companion:Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;->context:Landroid/content/Context;

    return-void
.end method

.method private final readSavedStateFileInternal(Ljava/io/DataInputStream;Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[readSavedStateFileInternal]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    new-instance v2, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;

    invoke-direct {v2, p1, p2}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;-><init>(Ljava/io/DataInputStream;Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;->mCallback:Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader$OnTabStateReadCallback;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader$OnTabStateReadCallback;->onDetailsRead(Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "CrossAppActionTabStateReader"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final read()V
    .locals 9

    const-string v0, "[read] tab state version : "

    const-string v1, "[read] unsupported tab state version : "

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "CrossAppActionTabStateReader"

    if-nez v2, :cond_0

    const-string p0, "[read] file does not exist."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    new-instance v6, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;

    invoke-direct {v6, v5}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;-><init>(I)V

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->isSupportedVersion()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v4, v8}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportIncognito()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    :cond_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-ltz v0, :cond_4

    if-ge v1, v0, :cond_4

    if-ge v3, v0, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportContentPageLaunch()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    :cond_3
    invoke-direct {p0, v4, v6, v0}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;->readSavedStateFileInternal(Ljava/io/DataInputStream;Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v4, v8}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :cond_4
    :try_start_5
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-static {v4, p0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public final setCallback(Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader$OnTabStateReadCallback;)Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader$OnTabStateReadCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;->mCallback:Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader$OnTabStateReadCallback;

    return-object p0
.end method

.method public final setFile(ILjava/lang/String;)Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fileName"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;->mFileName:Ljava/lang/String;

    return-object p0
.end method
