.class public final Lcom/samsung/android/scloud/lib/setting/c;
.super Ljava/util/TimerTask;
.source "SourceFile"


# static fields
.field public static final d:[J


# instance fields
.field public final a:Lcom/samsung/android/scloud/lib/setting/e;

.field public final b:J

.field public final c:Lcom/samsung/android/scloud/lib/setting/l;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    sput-object v0, Lcom/samsung/android/scloud/lib/setting/c;->d:[J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/scloud/lib/setting/l;Lcom/samsung/android/scloud/lib/setting/e;JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/c;->c:Lcom/samsung/android/scloud/lib/setting/l;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/setting/c;->a:Lcom/samsung/android/scloud/lib/setting/e;

    iput-wide p3, p0, Lcom/samsung/android/scloud/lib/setting/c;->b:J

    const-string p0, "LibSyncScheduleManager"

    const-string p1, "request task pending start: "

    const-string p2, ","

    invoke-static {p5, p6, p1, p2}, LB/e;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-class p2, Lcom/samsung/android/scloud/lib/setting/c;

    monitor-enter p2

    :try_start_0
    sget-object p3, Lcom/samsung/android/scloud/lib/setting/c;->d:[J

    const/4 p4, 0x0

    aget-wide p5, p3, p4

    const-wide/16 v0, 0x1

    add-long/2addr p5, v0

    aput-wide p5, p3, p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/c;->c:Lcom/samsung/android/scloud/lib/setting/l;

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/c;->a:Lcom/samsung/android/scloud/lib/setting/e;

    iget-wide v2, p0, Lcom/samsung/android/scloud/lib/setting/c;->b:J

    const-class p0, Lcom/samsung/android/scloud/lib/setting/e;

    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/samsung/android/scloud/lib/setting/d;->a:Lcom/samsung/android/scloud/lib/setting/b;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/scloud/lib/setting/b;->b(J)Lcom/samsung/android/scloud/lib/setting/b;

    move-result-object v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p0, 0x1

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/scloud/lib/setting/e;->g(Lcom/samsung/android/scloud/lib/setting/l;Lcom/samsung/android/scloud/lib/setting/e;Lcom/samsung/android/scloud/lib/setting/b;Z)V

    const-class v0, Lcom/samsung/android/scloud/lib/setting/c;

    monitor-enter v0

    :try_start_1
    sget-object p0, Lcom/samsung/android/scloud/lib/setting/c;->d:[J

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    aput-wide v2, p0, v1
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

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
