.class public final Lk0/o;
.super Lk0/t;
.source "SourceFile"


# instance fields
.field public c:Le0/b;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Le0/b;)V
    .locals 0

    invoke-direct {p0}, Lk0/t;-><init>()V

    iput-object p1, p0, Lk0/o;->c:Le0/b;

    return-void
.end method


# virtual methods
.method public final a(Lk0/t;)V
    .locals 2

    sget-object v0, Lk0/q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord.assign$lambda$0>"

    invoke-static {p1, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lk0/o;

    iget-object v1, v1, Lk0/o;->c:Le0/b;

    iput-object v1, p0, Lk0/o;->c:Le0/b;

    move-object v1, p1

    check-cast v1, Lk0/o;

    iget v1, v1, Lk0/o;->d:I

    iput v1, p0, Lk0/o;->d:I

    check-cast p1, Lk0/o;

    iget p1, p1, Lk0/o;->e:I

    iput p1, p0, Lk0/o;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b()Lk0/t;
    .locals 1

    new-instance v0, Lk0/o;

    iget-object p0, p0, Lk0/o;->c:Le0/b;

    invoke-direct {v0, p0}, Lk0/o;-><init>(Le0/b;)V

    return-object v0
.end method
