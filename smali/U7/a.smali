.class public final LU7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LG5/f4;

.field public final b:LU7/e;

.field public final c:LQ7/d;


# direct methods
.method public constructor <init>(LU7/e;LQ7/d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU7/a;->b:LU7/e;

    iput-object p2, p0, LU7/a;->c:LQ7/d;

    iget-boolean p1, p1, LU7/e;->g:Z

    const/4 p2, 0x1

    if-eq p2, p1, :cond_0

    const-string p1, "play-services-mlkit-language-id"

    goto :goto_0

    :cond_0
    const-string p1, "language-id"

    :goto_0
    const-class v0, Landroidx/activity/t;

    monitor-enter v0

    int-to-byte p2, p2

    or-int/lit8 p2, p2, 0x2

    int-to-byte p2, p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    :try_start_0
    new-instance p2, LG5/c4;

    invoke-direct {p2, p1}, LG5/c4;-><init>(Ljava/lang/String;)V

    const-class p1, Landroidx/activity/t;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Landroidx/activity/t;->a:LE5/s;

    if-nez v1, :cond_1

    new-instance v1, LE5/s;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LE5/s;-><init>(I)V

    sput-object v1, Landroidx/activity/t;->a:LE5/s;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    sget-object v1, Landroidx/activity/t;->a:LE5/s;

    invoke-virtual {v1, p2}, LF3/f;->H0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LG5/f4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    iput-object p2, p0, LU7/a;->a:LG5/f4;

    return-void

    :goto_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_3

    const-string p1, " enableFirelog"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_4

    const-string p1, " firelogEventType"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing required properties:"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3
.end method
