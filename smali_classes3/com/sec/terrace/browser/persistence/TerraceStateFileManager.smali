.class public Lcom/sec/terrace/browser/persistence/TerraceStateFileManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static deleteTerraceState(Ljava/io/File;IIZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/terrace/browser/persistence/TerraceStateFileManager;->getTerraceStateFile(Ljava/io/File;IIZ)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to delete TerraceState: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TerraceState"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static getContentStateByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 1

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static getTerraceStateFile(Ljava/io/File;IIZ)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2, p3}, Lcom/sec/terrace/browser/persistence/TerraceStateFileManager;->getTerraceStateFilename(IIZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTerraceStateFilePrefix(IZ)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p0, "_cryptonito"

    goto :goto_0

    :cond_0
    const-string p0, "_tab"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTerraceStateFilename(IIZ)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2}, Lcom/sec/terrace/browser/persistence/TerraceStateFileManager;->getTerraceStateFilePrefix(IZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseInfoFromFilename(ILjava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/sec/terrace/browser/persistence/TerraceStateFileManager;->getTerraceStateFilePrefix(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0xc

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/terrace/browser/persistence/TerraceStateFileManager;->getTerraceStateFilePrefix(IZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static readState(Ljava/io/FileInputStream;Z)Lcom/sec/terrace/TerraceState;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "Failed to read saved state version id from tab state. Assuming version "

    const-string v3, "Only skipped "

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->getInstance()Lcom/sec/terrace/browser/crypto/TinCipherFactory;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v6, Ljava/io/DataInputStream;

    new-instance v7, Ljavax/crypto/CipherInputStream;

    invoke-direct {v7, v0, v5}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    move-object v6, v4

    :goto_0
    if-nez v6, :cond_1

    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_1
    const-wide/16 v7, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v5, v9, v7

    if-eqz v5, :cond_2

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    return-object v4

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    :try_start_1
    new-instance v5, Lcom/sec/terrace/TerraceState;

    invoke-direct {v5}, Lcom/sec/terrace/TerraceState;-><init>()V

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    iput-wide v9, v5, Lcom/sec/terrace/TerraceState;->timestampMillis:J

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v10, "TerraceState"

    if-eqz v1, :cond_3

    :try_start_2
    new-array v0, v9, [B

    invoke-virtual {v6, v0}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v3, Lcom/sec/terrace/TerraceState$WebContentsState;

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/sec/terrace/TerraceState$WebContentsState;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v3, v5, Lcom/sec/terrace/TerraceState;->contentsState:Lcom/sec/terrace/TerraceState$WebContentsState;

    invoke-virtual {v3}, Lcom/sec/terrace/TerraceState$WebContentsState;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    new-instance v15, Lcom/sec/terrace/TerraceState$WebContentsState;

    sget-object v12, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v13

    int-to-long v7, v9

    move-object v4, v15

    move-wide v15, v7

    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v11

    invoke-direct {v4, v11}, Lcom/sec/terrace/TerraceState$WebContentsState;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v4, v5, Lcom/sec/terrace/TerraceState;->contentsState:Lcom/sec/terrace/TerraceState$WebContentsState;

    invoke-virtual {v0, v7, v8}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v11

    cmp-long v0, v11, v7

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bytes when "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should\'ve been skipped. Tab restore may fail."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v5, Lcom/sec/terrace/TerraceState;->parentId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sec/terrace/TerraceState;->openerAppId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, v5, Lcom/sec/terrace/TerraceState;->openerAppId:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_4
    const-string v0, "Failed to read opener app id state from tab state"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :goto_2
    const/4 v0, 0x0

    :try_start_5
    iget-object v3, v5, Lcom/sec/terrace/TerraceState;->contentsState:Lcom/sec/terrace/TerraceState$WebContentsState;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/terrace/TerraceState$WebContentsState;->setVersion(I)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_1
    :try_start_6
    iget-object v3, v5, Lcom/sec/terrace/TerraceState;->contentsState:Lcom/sec/terrace/TerraceState$WebContentsState;

    invoke-virtual {v3, v0}, Lcom/sec/terrace/TerraceState$WebContentsState;->setVersion(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Lcom/sec/terrace/TerraceState;->contentsState:Lcom/sec/terrace/TerraceState$WebContentsState;

    invoke-virtual {v2}, Lcom/sec/terrace/TerraceState$WebContentsState;->version()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    :try_start_7
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/sec/terrace/TerraceState;->syncId:J
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catch_2
    const-wide/16 v2, 0x0

    :try_start_8
    iput-wide v2, v5, Lcom/sec/terrace/TerraceState;->syncId:J

    const-string v2, "Failed to read syncId from tab state. Assuming syncId is: 0"

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_4
    :try_start_9
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, v5, Lcom/sec/terrace/TerraceState;->shouldPreserve:Z
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    :catch_3
    :try_start_a
    iput-boolean v0, v5, Lcom/sec/terrace/TerraceState;->shouldPreserve:Z

    const-string v0, "Failed to read shouldPreserve flag from tab state. Assuming shouldPreserve is false"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_5
    :try_start_b
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, v5, Lcom/sec/terrace/TerraceState;->zoomValue:D
    :try_end_b
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    :catch_4
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :try_start_c
    iput-wide v2, v5, Lcom/sec/terrace/TerraceState;->zoomValue:D

    const-string v0, "Failed to read zoom value from tab state. Assuming zoom value is 1.0"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iput-boolean v1, v5, Lcom/sec/terrace/TerraceState;->mIsIncognito:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    return-object v5

    :goto_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static restoreTerraceState(Ljava/io/File;II)Lcom/sec/terrace/TerraceState;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/terrace/browser/persistence/TerraceStateFileManager;->getTerraceStateFile(Ljava/io/File;IIZ)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/sec/terrace/browser/persistence/TerraceStateFileManager;->getTerraceStateFile(Ljava/io/File;IIZ)Ljava/io/File;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-static {v1, v0}, Lcom/sec/terrace/browser/persistence/TerraceStateFileManager;->restoreTerraceState(Ljava/io/File;Z)Lcom/sec/terrace/TerraceState;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :cond_2
    return-object p0
.end method

.method public static restoreTerraceState(Ljava/io/File;Z)Lcom/sec/terrace/TerraceState;
    .locals 4

    const-string v0, "TerraceState"

    const-string v1, "Failed to restore tab state for tab: "

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v3, p1}, Lcom/sec/terrace/browser/persistence/TerraceStateFileManager;->readState(Ljava/io/FileInputStream;Z)Lcom/sec/terrace/TerraceState;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v3}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v3, v2

    goto :goto_1

    :catch_2
    move-object v3, v2

    goto :goto_2

    :goto_1
    :try_start_2
    const-string p1, "Failed to restore tab state."

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_3
    return-object v2

    :goto_4
    invoke-static {v2}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static saveState(Ljava/io/File;Lcom/sec/terrace/TerraceState;Z)V
    .locals 7

    const-string v0, "TerraceState"

    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/sec/terrace/TerraceState;->contentsState:Lcom/sec/terrace/TerraceState$WebContentsState;

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v1, p1, Lcom/sec/terrace/TerraceState;->contentsState:Lcom/sec/terrace/TerraceState$WebContentsState;

    invoke-virtual {v1}, Lcom/sec/terrace/TerraceState$WebContentsState;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/terrace/browser/persistence/TerraceStateFileManager;->getContentStateByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_2

    :try_start_1
    invoke-static {}, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->getInstance()Lcom/sec/terrace/browser/crypto/TinCipherFactory;

    move-result-object p0

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v6, v3, p0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    invoke-static {v2}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v3}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_2
    :try_start_2
    new-instance p0, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, p0

    :goto_0
    if-eqz p2, :cond_3

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    :cond_3
    iget-wide v4, p1, Lcom/sec/terrace/TerraceState;->timestampMillis:J

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    array-length p0, v1

    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    iget p0, p1, Lcom/sec/terrace/TerraceState;->parentId:I

    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p0, p1, Lcom/sec/terrace/TerraceState;->openerAppId:Ljava/lang/String;

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const-string p0, ""

    :goto_1
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/sec/terrace/TerraceState;->contentsState:Lcom/sec/terrace/TerraceState$WebContentsState;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceState$WebContentsState;->version()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v4, p1, Lcom/sec/terrace/TerraceState;->syncId:J

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-boolean p0, p1, Lcom/sec/terrace/TerraceState;->shouldPreserve:Z

    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-wide p0, p1, Lcom/sec/terrace/TerraceState;->zoomValue:D

    invoke-virtual {v2, p0, p1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-static {v2}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v3}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v3, v2

    goto :goto_6

    :catch_0
    move-object v3, v2

    goto :goto_3

    :catch_1
    move-object v3, v2

    goto :goto_4

    :catch_2
    :goto_3
    :try_start_3
    const-string p0, "IOException while attempting to save TerraceState."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    :goto_4
    const-string p0, "FileNotFoundException while attempting to save TerraceState."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_5
    return-void

    :goto_6
    invoke-static {v2}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v3}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_5
    :goto_7
    return-void
.end method
