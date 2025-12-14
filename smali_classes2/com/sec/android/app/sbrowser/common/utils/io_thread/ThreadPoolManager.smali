.class Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPoolManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDisorderPoolMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;",
            "Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$DisorderPool;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrderPoolMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;",
            "Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$OrderPool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPoolManager;->mOrderPoolMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPoolManager;->mDisorderPoolMap:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPoolManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-class v1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPoolManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPoolManager;

    return-object v0
.end method


# virtual methods
.method public getThreadPool(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;)Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;->ORDER:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPoolManager;->mOrderPoolMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$OrderPool;

    if-nez p2, :cond_0

    new-instance p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$OrderPool;

    invoke-direct {p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$OrderPool;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPoolManager;->mOrderPoolMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p2

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;->DISORDER:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPoolManager;->mDisorderPoolMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$DisorderPool;

    if-nez p2, :cond_3

    new-instance p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$DisorderPool;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->getMaxThreadCount()I

    move-result v0

    invoke-direct {p2, v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$DisorderPool;-><init>(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPoolManager;->mDisorderPoolMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p2
.end method
