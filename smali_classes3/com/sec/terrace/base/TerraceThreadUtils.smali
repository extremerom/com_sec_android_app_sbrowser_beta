.class public Lcom/sec/terrace/base/TerraceThreadUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;,
        Lcom/sec/terrace/base/TerraceThreadUtils$Natives;
    }
.end annotation


# static fields
.field private static final dbRunner:Lorg/chromium/base/task/TaskRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lorg/chromium/base/task/PostTask;->createSequencedTaskRunner(I)Lorg/chromium/base/task/SequencedTaskRunner;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/base/TerraceThreadUtils;->dbRunner:Lorg/chromium/base/task/TaskRunner;

    return-void
.end method

.method public static assertOnUiThread()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    return-void
.end method

.method public static getUiThreadHandler()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static postOnDbThread(Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/sec/terrace/base/TerraceThreadUtils$1;->$SwitchMap$com$sec$terrace$base$TerraceThreadUtils$TaskRunnerType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtilsJni;->get()Lcom/sec/terrace/base/TerraceThreadUtils$Natives;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sec/terrace/base/TerraceThreadUtils$Natives;->postOnPasswordDataThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtilsJni;->get()Lcom/sec/terrace/base/TerraceThreadUtils$Natives;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sec/terrace/base/TerraceThreadUtils$Natives;->postOnPersonalDataThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static postOnDbThread(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;->PERSONAL_DATA:Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

    invoke-static {v0, p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnDbThread(Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static postOnUiThread(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static postOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static runOnUiThreadBlocking(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runningOnUiThread()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    return v0
.end method
