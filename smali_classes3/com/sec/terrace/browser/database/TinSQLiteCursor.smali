.class public Lcom/sec/terrace/browser/database/TinSQLiteCursor;
.super Landroid/database/AbstractCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;
    }
.end annotation


# instance fields
.field private final mColumnTypeLock:Ljava/lang/Object;

.field private mColumnTypes:[I

.field private mCount:I

.field private final mDestoryNativeLock:Ljava/lang/Object;

.field private final mGetBlobLock:Ljava/lang/Object;

.field private final mMoveLock:Ljava/lang/Object;

.field private mNativeTinSQLiteCursor:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mCount:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mColumnTypeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mDestoryNativeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mMoveLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mGetBlobLock:Ljava/lang/Object;

    iput-wide p1, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mNativeTinSQLiteCursor:J

    return-void
.end method

.method private static create(J)Lcom/sec/terrace/browser/database/TinSQLiteCursor;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor;-><init>(J)V

    return-object v0
.end method

.method private fillRow(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->putValue(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/database/CursorWindow;->freeLastRow()V

    const/4 p0, 0x0

    return p0
.end method

.method private getColumnType(I)I
    .locals 7

    iget-object v0, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mColumnTypeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mColumnTypes:[I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnCount()I

    move-result v1

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mColumnTypes:[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mColumnTypes:[I

    invoke-static {}, Lcom/sec/terrace/browser/database/TinSQLiteCursorJni;->get()Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;

    move-result-object v4

    iget-wide v5, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mNativeTinSQLiteCursor:J

    invoke-interface {v4, v5, v6, p0, v2}, Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;->getColumnType(JLcom/sec/terrace/browser/database/TinSQLiteCursor;I)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mColumnTypes:[I

    aget p0, p0, p1

    return p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private putValue(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1, p3, p4}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result p0

    return p0

    :cond_0
    instance-of p0, p2, Ljava/lang/Long;

    if-eqz p0, :cond_1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p3, p4}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result p0

    return p0

    :cond_1
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p4}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_2
    instance-of p0, p2, [B

    if-eqz p0, :cond_3

    move-object p0, p2

    check-cast p0, [B

    array-length v0, p0

    if-lez v0, :cond_3

    invoke-virtual {p1, p0, p3, p4}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result p0

    return p0

    :cond_3
    instance-of p0, p2, Ljava/lang/Double;

    if-eqz p0, :cond_4

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p3, p4}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p1, p3, p4}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public close()V
    .locals 7

    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    iget-object v0, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mDestoryNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mNativeTinSQLiteCursor:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/database/TinSQLiteCursorJni;->get()Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;

    move-result-object v1

    iget-wide v5, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mNativeTinSQLiteCursor:J

    invoke-interface {v1, v5, v6, p0}, Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;->destroy(JLcom/sec/terrace/browser/database/TinSQLiteCursor;)V

    iput-wide v3, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mNativeTinSQLiteCursor:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 4

    if-ltz p1, :cond_9

    invoke-virtual {p0}, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->getCount()I

    move-result v0

    if-le p1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_0
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getPosition()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnCount()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->getColumnType(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    if-eqz v2, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    const/16 v3, 0x7d4

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getPosition()I

    move-result v3

    invoke-direct {p0, p2, v2, v3, v1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->fillRow(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getPosition()I

    move-result v3

    invoke-direct {p0, p2, v2, v3, v1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->fillRow(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v2

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getPosition()I

    move-result v3

    invoke-direct {p0, p2, v2, v3, v1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->fillRow(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v2

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3, v2, v1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->fillRow(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v2

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getPosition()I

    move-result v3

    invoke-direct {p0, p2, v2, v3, v1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->fillRow(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v2

    :goto_2
    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    goto :goto_4

    :goto_3
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p0

    :cond_9
    :goto_4
    return-void
.end method

.method public finalize()V
    .locals 2

    invoke-super {p0}, Landroid/database/AbstractCursor;->finalize()V

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TinSQLiteCursor"

    const-string v1, "Cursor hasn\'t been closed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->close()V

    :cond_0
    return-void
.end method

.method public getBlob(I)[B
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mGetBlobLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/browser/database/TinSQLiteCursorJni;->get()Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mNativeTinSQLiteCursor:J

    invoke-interface {v1, v2, v3, p0, p1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;->getBlob(JLcom/sec/terrace/browser/database/TinSQLiteCursor;I)[B

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/database/TinSQLiteCursorJni;->get()Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mNativeTinSQLiteCursor:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;->getColumnNames(JLcom/sec/terrace/browser/database/TinSQLiteCursor;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCount()I
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mMoveLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/database/TinSQLiteCursorJni;->get()Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mNativeTinSQLiteCursor:J

    invoke-interface {v1, v2, v3, p0}, Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;->getCount(JLcom/sec/terrace/browser/database/TinSQLiteCursor;)I

    move-result v1

    iput v1, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mCount:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p0, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mCount:I

    return p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getDouble(I)D
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/database/TinSQLiteCursorJni;->get()Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mNativeTinSQLiteCursor:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;->getDouble(JLcom/sec/terrace/browser/database/TinSQLiteCursor;I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getFloat(I)F
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/database/TinSQLiteCursorJni;->get()Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mNativeTinSQLiteCursor:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;->getDouble(JLcom/sec/terrace/browser/database/TinSQLiteCursor;I)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public getInt(I)I
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/database/TinSQLiteCursorJni;->get()Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mNativeTinSQLiteCursor:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;->getInt(JLcom/sec/terrace/browser/database/TinSQLiteCursor;I)I

    move-result p0

    return p0
.end method

.method public getLong(I)J
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/database/TinSQLiteCursorJni;->get()Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mNativeTinSQLiteCursor:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;->getLong(JLcom/sec/terrace/browser/database/TinSQLiteCursor;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getShort(I)S
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/database/TinSQLiteCursorJni;->get()Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mNativeTinSQLiteCursor:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;->getInt(JLcom/sec/terrace/browser/database/TinSQLiteCursor;I)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/database/TinSQLiteCursorJni;->get()Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mNativeTinSQLiteCursor:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;->getString(JLcom/sec/terrace/browser/database/TinSQLiteCursor;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isNull(I)Z
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/database/TinSQLiteCursorJni;->get()Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mNativeTinSQLiteCursor:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;->isNull(JLcom/sec/terrace/browser/database/TinSQLiteCursor;I)Z

    move-result p0

    return p0
.end method

.method public onMove(II)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mMoveLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/browser/database/TinSQLiteCursorJni;->get()Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;->mNativeTinSQLiteCursor:J

    invoke-interface {v1, v2, v3, p0, p2}, Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;->moveTo(JLcom/sec/terrace/browser/database/TinSQLiteCursor;I)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1, p2}, Landroid/database/AbstractCursor;->onMove(II)Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
