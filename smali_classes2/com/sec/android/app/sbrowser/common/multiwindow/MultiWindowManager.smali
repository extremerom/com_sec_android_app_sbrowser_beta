.class public Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;


# instance fields
.field private mMultiWindowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->mMultiWindowMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForAllActivities(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    return-void
.end method

.method private generateKey(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private generateKeyFromContext(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->sInstance:Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->sInstance:Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->sInstance:Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addObserver(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->generateKey(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->mMultiWindowMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;-><init>(Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->mMultiWindowMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->mMultiWindowMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;->addObserver(Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;)V

    return-void
.end method

.method public destroy()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->mMultiWindowMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    const/4 p0, 0x0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->sInstance:Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    return-void
.end method

.method public getMultiWindow(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->generateKey(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->mMultiWindowMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->mMultiWindowMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;

    return-object p0
.end method

.method public getMultiWindowFromContext(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->generateKeyFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->mMultiWindowMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->mMultiWindowMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;

    return-object p0
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->generateKey(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->mMultiWindowMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->mMultiWindowMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;->destroy()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->mMultiWindowMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public removeObserver(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->generateKey(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->mMultiWindowMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->mMultiWindowMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;->removeObserver(Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;->hasObserver()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->mMultiWindowMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
