.class public Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ArcSoft_BenchmarkUtil"

.field private static m_BenchMarkEnabled:Z

.field private static m_BenchmarkMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;",
            ">;"
        }
    .end annotation
.end field

.field private static m_Count:I

.field private static m_StartTimeMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_StartTimeMap:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_BenchmarkMap:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_BenchMarkEnabled:Z

    sput v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_Count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static benchmark_ending()V
    .locals 2

    const-string v0, "====================================================================="

    sget-object v1, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static benchmark_print(Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TOTAL STATISTICS] Name = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->sItemName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Total Time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->lTotalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", MaxCost = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->lMaxCost:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", MinCost = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->lMinCost:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Avg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->lTotalTime:J

    long-to-float v1, v1

    iget p0, p0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->Count:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static benchmark_title()V
    .locals 3

    sget-object v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->TAG:Ljava/lang/String;

    const-string v1, "====================================================================="

    invoke-static {v0, v1}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "====              App Benchmark of ArcSoft                       ===="

    invoke-static {v0, v2}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized close()V
    .locals 3

    const-class v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_Count:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    sput v1, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_Count:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->summaryBenchMark()V

    sget-object v1, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_StartTimeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    sget-object v1, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_BenchmarkMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_BenchMarkEnabled:Z

    sput v1, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_Count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized open()V
    .locals 3

    const-class v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_BenchMarkEnabled:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sput-boolean v2, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_BenchMarkEnabled:Z

    sget-object v1, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_StartTimeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    sget-object v1, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_BenchmarkMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget v1, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_Count:I

    add-int/2addr v1, v2

    sput v1, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_Count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized start(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_BenchMarkEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-nez p0, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_StartTimeMap:Ljava/util/LinkedHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized stop(Ljava/lang/String;)V
    .locals 7

    const-string v0, "benckmark name: "

    const-class v1, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_BenchMarkEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    if-nez p0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_StartTimeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-object v2, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cost time = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/arcsoft/libarccommon/utils/ArcCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_BenchmarkMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;

    if-nez v0, :cond_3

    new-instance v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;

    invoke-direct {v0}, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;-><init>()V

    iput-wide v3, v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->lMaxCost:J

    iput-wide v3, v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->lMinCost:J

    iput-object p0, v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->sItemName:Ljava/lang/String;

    sget-object v2, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_BenchmarkMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    iget-wide v5, v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->lMaxCost:J

    cmp-long p0, v5, v3

    if-gez p0, :cond_4

    iput-wide v3, v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->lMaxCost:J

    :cond_4
    iget-wide v5, v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->lMinCost:J

    cmp-long p0, v5, v3

    if-lez p0, :cond_5

    iput-wide v3, v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->lMinCost:J

    :cond_5
    iget-wide v5, v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->lTotalTime:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->lTotalTime:J

    iget p0, v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->Count:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;->Count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-void

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private static summaryBenchMark()V
    .locals 3

    sget-boolean v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_BenchMarkEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->benchmark_title()V

    sget-object v0, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_BenchmarkMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->m_BenchmarkMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;

    invoke-static {v1}, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->benchmark_print(Lcom/arcsoft/libarccommon/utils/BenchmarkUtil$BenchmarkItem;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/arcsoft/libarccommon/utils/BenchmarkUtil;->benchmark_ending()V

    return-void
.end method
