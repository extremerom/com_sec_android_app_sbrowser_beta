.class public final Lt9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ4/b;
.implements LSb/A;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, Lt9/c;->a:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lr2/d;

    invoke-direct {p1}, Lr2/d;-><init>()V

    iput-object p1, p0, Lt9/c;->b:Ljava/lang/Object;

    new-instance p1, Lt2/a;

    invoke-direct {p1}, Lt2/a;-><init>()V

    iput-object p1, p0, Lt9/c;->c:Ljava/lang/Object;

    return-void

    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lt9/c;->b:Ljava/lang/Object;

    new-instance p1, LN/f;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LN/A;-><init>(I)V

    iput-object p1, p0, Lt9/c;->c:Ljava/lang/Object;

    return-void

    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v0, 0x3f400000    # 0.75f

    const/16 v1, 0xa

    const/16 v2, 0x10

    invoke-direct {p1, v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object p1, p0, Lt9/c;->b:Ljava/lang/Object;

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lt9/c;->c:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lt9/c;->a:I

    iput-object p2, p0, Lt9/c;->b:Ljava/lang/Object;

    iput-object p3, p0, Lt9/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LF6/e;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lt9/c;->a:I

    new-instance v0, Lcom/android/volley/toolbox/a;

    invoke-direct {v0}, Lcom/android/volley/toolbox/a;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/c;->b:Ljava/lang/Object;

    iput-object v0, p0, Lt9/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LQ/i;LQ/f;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lt9/c;->a:I

    const-string v0, "endState"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endReason"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lt9/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lt9/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/c;->c:Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SS[FileShare]"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lt9/c;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lt9/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 3

    const/4 v0, 0x7

    iput v0, p0, Lt9/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.IMessenger"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lt9/c;->b:Ljava/lang/Object;

    iput-object v2, p0, Lt9/c;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.iid.IMessengerCompat"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/cloudmessaging/zzd;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lt9/c;->c:Ljava/lang/Object;

    iput-object v2, p0, Lt9/c;->b:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const-string v0, "Invalid interface descriptor: "

    if-eqz p1, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string p1, "MessengerIpcClient"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lt9/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/c;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lt9/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, Lt9/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/c;->b:Ljava/lang/Object;

    new-instance p1, Lxc/l;

    const-string v0, "Java nullability annotation states"

    invoke-direct {p1, v0}, Lxc/l;-><init>(Ljava/lang/String;)V

    new-instance v0, LMb/a;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, LMb/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lxc/l;->c(Lsb/k;)Lxc/j;

    move-result-object p1

    iput-object p1, p0, Lt9/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lt9/c;
    .locals 5

    const-string v0, "generatefid.lock"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {p0, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v2, Lt9/c;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0}, Lt9/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v2

    move-object p0, v1

    move-object v0, p0

    :goto_0
    const-string v3, "CrossProcessLock"

    const-string v4, "encountered error while creating and acquiring the lock, ignoring"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_0
    if-eqz p0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_1
    return-object v1
.end method

.method public static d(Landroid/graphics/ImageDecoder$Source;IILQ3/k;)LZ3/D;
    .locals 1

    new-instance v0, LY3/b;

    invoke-direct {v0, p1, p2, p3}, LY3/b;-><init>(IILQ3/k;)V

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz p1, :cond_0

    new-instance p1, LZ3/D;

    check-cast p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, LZ3/D;-><init>(ILjava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Received unexpected drawable type for animated image, failing: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static e(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-lez v1, :cond_2

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lt9/c;->e(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public b(Ljava/io/File;Ljava/io/BufferedOutputStream;Lcom/android/volley/toolbox/d;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    iget-object v2, v1, Lt9/c;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v5, p1

    :try_start_1
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const v7, 0x8000

    :try_start_3
    new-array v7, v7, [B

    const-wide/16 v8, 0x0

    :goto_0
    move-wide v10, v8

    :cond_0
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    const/4 v13, 0x0

    move-object/from16 v14, p2

    invoke-virtual {v14, v7, v13, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    int-to-long v12, v12

    add-long/2addr v8, v12

    sub-long v12, v8, v10

    const-wide/32 v15, 0x100000

    cmp-long v12, v12, v15

    if-ltz v12, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :try_start_4
    iget v1, v0, Lcom/android/volley/toolbox/d;->a:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/volley/toolbox/d;->a:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :goto_1
    :try_start_7
    iget-object v1, v1, Lt9/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v7, "cpStream Error"

    invoke-static {v1, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-static {v1, v7, v0}, LK3/a;->a(ILjava/lang/String;Ljava/lang/String;)LK3/a;

    move-result-object v0

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_2
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v0

    :try_start_9
    invoke-virtual {v1, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_4
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v4, v0

    :try_start_b
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :catch_2
    move-exception v0

    move-object/from16 v5, p1

    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "copyFileToStream "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Exception "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "copyFileToStream result :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", srcFile : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public c(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lt9/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object p0, p0, Lt9/c;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/ContentResolver;

    invoke-static {p0, p1, p3, p2}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "createFile : "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    const/4 p3, 0x1

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    :goto_1
    const-string v1, "createFile : %s, Document Uri : %s, Created directory Uri : %s"

    filled-new-array {p2, p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object p0
.end method

.method public f(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    const-string v0, "bInputStream close exception"

    const-string v1, "inputStream close exception"

    iget-object v2, p0, Lt9/c;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lt9/c;->c:Ljava/lang/Object;

    check-cast v4, Landroid/content/ContentResolver;

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, v5}, Lt9/c;->g(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_0
    move-exception p0

    :goto_1
    move-object v3, v4

    goto :goto_7

    :catch_2
    move-exception p0

    :goto_2
    move-object v3, v4

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v5, v3

    goto :goto_1

    :catch_3
    move-exception p0

    move-object v5, v3

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v5, v3

    goto :goto_7

    :catch_4
    move-exception p0

    move-object v5, v3

    :goto_3
    :try_start_5
    const-string v4, "getDataFromUri %s Exception %s"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    :catch_5
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_4
    if-eqz v5, :cond_2

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_5
    const-string p0, ""

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDataFromUri result :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", srcUri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catchall_3
    move-exception p0

    :goto_7
    if-eqz v3, :cond_3

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_8

    :catch_7
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_8
    if-eqz v5, :cond_4

    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_9

    :catch_8
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_9
    throw p0
.end method

.method public g(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 7

    const-string v0, "getStreamData close ex"

    iget-object p0, p0, Lt9/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v1, 0x0

    const/16 v2, 0x800

    :try_start_0
    new-array v3, v2, [C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v1

    :goto_0
    :try_start_1
    invoke-virtual {p1, v3}, Ljava/io/Reader;->read([C)I

    move-result v5

    if-lez v5, :cond_1

    if-nez v4, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v6

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_0
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v4, v1

    :goto_3
    :try_start_3
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStreamData ex : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_4
    if-nez v4, :cond_2

    goto :goto_5

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    return-object v1

    :goto_6
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    throw v1
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lt9/c;->b:Ljava/lang/Object;

    check-cast v0, LO9/a;

    iget-object v0, v0, LO9/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lt9/c;->c:Ljava/lang/Object;

    check-cast p0, LG5/J2;

    invoke-virtual {p0}, LG5/J2;->get()Ljava/lang/Object;

    move-result-object p0

    new-instance v1, LI4/f;

    check-cast p0, LI4/e;

    invoke-direct {v1, v0, p0}, LI4/f;-><init>(Landroid/content/Context;LI4/e;)V

    return-object v1
.end method

.method public h(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iget-object p0, p0, Lt9/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prepareOutFilefailed to create parentFile"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "prepareOutFilefailed to delete outFile"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {p1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Ljava/io/BufferedWriter;

    const v3, 0x8000

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    sub-int v6, v4, v5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v2, p2, v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr v5, v3

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_9

    :catch_0
    move-exception p1

    goto :goto_8

    :catchall_1
    move-exception p1

    goto :goto_6

    :catchall_2
    move-exception p2

    goto :goto_4

    :goto_2
    :try_start_7
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_4
    :try_start_9
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p1

    :try_start_a
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_6
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception p2

    :try_start_c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :goto_8
    const-string p2, "mkFile"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    return v1
.end method

.method public i([BLr2/b;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    array-length v6, v1

    iget-object v7, v0, Lt9/c;->b:Ljava/lang/Object;

    check-cast v7, Lr2/d;

    iput-object v1, v7, Lr2/d;->a:[B

    iput v6, v7, Lr2/d;->c:I

    iput v2, v7, Lr2/d;->b:I

    invoke-virtual {v7, v2}, Lr2/d;->e(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {v7}, Lt2/h;->c(Lr2/d;)V
    :try_end_0
    .catch Lp2/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v7}, Lr2/d;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_1
    move v9, v2

    move v8, v4

    :goto_2
    if-ne v8, v4, :cond_5

    iget v9, v7, Lr2/d;->b:I

    invoke-virtual {v7}, Lr2/d;->c()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    const-string v11, "STYLE"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v8, v3

    goto :goto_2

    :cond_3
    const-string v11, "NOTE"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v5

    goto :goto_2

    :cond_4
    const/4 v8, 0x3

    goto :goto_2

    :cond_5
    invoke-virtual {v7, v9}, Lr2/d;->e(I)V

    if-eqz v8, :cond_3b

    if-ne v8, v5, :cond_6

    :goto_3
    invoke-virtual {v7}, Lr2/d;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    if-ne v8, v3, :cond_36

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-virtual {v7}, Lr2/d;->c()Ljava/lang/String;

    iget-object v8, v0, Lt9/c;->c:Ljava/lang/Object;

    check-cast v8, Lt2/a;

    iget-object v11, v8, Lt2/a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget v12, v7, Lr2/d;->b:I

    :goto_4
    invoke-virtual {v7}, Lr2/d;->c()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_34

    iget-object v13, v7, Lr2/d;->a:[B

    iget v14, v7, Lr2/d;->b:I

    iget-object v8, v8, Lt2/a;->a:Lr2/d;

    iput-object v13, v8, Lr2/d;->a:[B

    iput v14, v8, Lr2/d;->c:I

    iput v2, v8, Lr2/d;->b:I

    invoke-virtual {v8, v12}, Lr2/d;->e(I)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-static {v8}, Lt2/a;->c(Lr2/d;)V

    invoke-virtual {v8}, Lr2/d;->a()I

    move-result v13

    const-string v14, "{"

    const-string v15, ""

    const/4 v10, 0x5

    if-ge v13, v10, :cond_7

    :goto_6
    move-object v3, v9

    goto/16 :goto_a

    :cond_7
    sget-object v13, Lcom/google/common/base/k;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v10, v13}, Lr2/d;->d(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "::cue"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_6

    :cond_8
    iget v10, v8, Lr2/d;->b:I

    invoke-static {v8, v11}, Lt2/a;->b(Lr2/d;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-virtual {v8, v10}, Lr2/d;->e(I)V

    move-object v3, v15

    goto :goto_a

    :cond_a
    const-string v10, "("

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget v10, v8, Lr2/d;->b:I

    iget v13, v8, Lr2/d;->c:I

    move/from16 v16, v2

    :goto_7
    if-ge v10, v13, :cond_c

    if-nez v16, :cond_c

    iget-object v3, v8, Lr2/d;->a:[B

    add-int/lit8 v17, v10, 0x1

    aget-byte v3, v3, v10

    int-to-char v3, v3

    const/16 v10, 0x29

    if-ne v3, v10, :cond_b

    move v3, v5

    goto :goto_8

    :cond_b
    move v3, v2

    :goto_8
    move/from16 v16, v3

    move/from16 v10, v17

    const/4 v3, 0x2

    goto :goto_7

    :cond_c
    add-int/2addr v10, v4

    iget v3, v8, Lr2/d;->b:I

    sub-int/2addr v10, v3

    sget-object v3, Lcom/google/common/base/k;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v10, v3}, Lr2/d;->d(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_d
    move-object v3, v9

    :goto_9
    invoke-static {v8, v11}, Lt2/a;->b(Lr2/d;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    const-string v13, ")"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto :goto_6

    :cond_e
    :goto_a
    if-eqz v3, :cond_32

    invoke-static {v8, v11}, Lt2/a;->b(Lr2/d;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    goto/16 :goto_1b

    :cond_f
    new-instance v10, Lt2/b;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v15, v10, Lt2/b;->a:Ljava/lang/String;

    iput-object v15, v10, Lt2/b;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v13

    iput-object v13, v10, Lt2/b;->c:Ljava/util/Set;

    iput-object v15, v10, Lt2/b;->d:Ljava/lang/String;

    iput-object v9, v10, Lt2/b;->e:Ljava/lang/String;

    iput-boolean v2, v10, Lt2/b;->g:Z

    iput-boolean v2, v10, Lt2/b;->i:Z

    iput v4, v10, Lt2/b;->j:I

    iput v4, v10, Lt2/b;->k:I

    iput v4, v10, Lt2/b;->l:I

    iput v4, v10, Lt2/b;->m:I

    iput v4, v10, Lt2/b;->o:I

    iput-boolean v2, v10, Lt2/b;->p:Z

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    goto :goto_d

    :cond_10
    const/16 v13, 0x5b

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v4, :cond_12

    sget-object v14, Lt2/a;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-virtual {v9, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v9, v10, Lt2/b;->d:Ljava/lang/String;

    :cond_11
    invoke-virtual {v3, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_12
    sget v9, Lr2/e;->a:I

    const-string v9, "\\."

    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v9, v3, v2

    const/16 v13, 0x23

    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v4, :cond_13

    invoke-virtual {v9, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Lt2/b;->b:Ljava/lang/String;

    add-int/2addr v13, v5

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Lt2/b;->a:Ljava/lang/String;

    goto :goto_b

    :cond_13
    iput-object v9, v10, Lt2/b;->b:Ljava/lang/String;

    :goto_b
    array-length v9, v3

    if-le v9, v5, :cond_15

    array-length v9, v3

    array-length v13, v3

    if-gt v9, v13, :cond_14

    move v13, v5

    goto :goto_c

    :cond_14
    move v13, v2

    :goto_c
    invoke-static {v13}, Lr2/c;->a(Z)V

    invoke-static {v3, v5, v9}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    new-instance v9, Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v9, v10, Lt2/b;->c:Ljava/util/Set;

    :cond_15
    :goto_d
    move v3, v2

    const/4 v9, 0x0

    :goto_e
    const-string v13, "}"

    if-nez v3, :cond_30

    iget v3, v8, Lr2/d;->b:I

    invoke-static {v8, v11}, Lt2/a;->b(Lr2/d;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_17

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    goto :goto_f

    :cond_16
    move v14, v2

    goto :goto_10

    :cond_17
    :goto_f
    move v14, v5

    :goto_10
    if-nez v14, :cond_2f

    invoke-virtual {v8, v3}, Lr2/d;->e(I)V

    invoke-static {v8}, Lt2/a;->c(Lr2/d;)V

    invoke-static {v8, v11}, Lt2/a;->a(Lr2/d;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    goto/16 :goto_1a

    :cond_18
    const-string v2, ":"

    invoke-static {v8, v11}, Lt2/a;->b(Lr2/d;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_1a

    :cond_19
    invoke-static {v8}, Lt2/a;->c(Lr2/d;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_11
    const-string v5, ";"

    if-nez v4, :cond_1d

    iget v0, v8, Lr2/d;->b:I

    move/from16 v19, v4

    invoke-static {v8, v11}, Lt2/a;->b(Lr2/d;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    const/4 v0, 0x0

    goto :goto_13

    :cond_1a
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1c

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_12

    :cond_1b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v4, v19

    goto :goto_11

    :cond_1c
    :goto_12
    invoke-virtual {v8, v0}, Lr2/d;->e(I)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    goto :goto_11

    :cond_1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_13
    if-eqz v0, :cond_2f

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto/16 :goto_1a

    :cond_1e
    iget v2, v8, Lr2/d;->b:I

    invoke-static {v8, v11}, Lt2/a;->b(Lr2/d;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_14

    :cond_1f
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {v8, v2}, Lr2/d;->e(I)V

    :goto_14
    const-string v2, "color"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {v0}, Lr2/a;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lt2/b;->f:I

    const/4 v2, 0x1

    iput-boolean v2, v10, Lt2/b;->g:Z

    goto/16 :goto_1a

    :cond_20
    const/4 v2, 0x1

    const-string v4, "background-color"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-static {v0}, Lr2/a;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lt2/b;->h:I

    iput-boolean v2, v10, Lt2/b;->i:Z

    goto/16 :goto_1a

    :cond_21
    const-string v4, "ruby-position"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v3, "over"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iput v2, v10, Lt2/b;->o:I

    goto/16 :goto_1a

    :cond_22
    const-string v2, "under"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x2

    iput v0, v10, Lt2/b;->o:I

    goto/16 :goto_1a

    :cond_23
    const-string v2, "text-combine-upright"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v2, "all"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "digits"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_15

    :cond_24
    const/4 v0, 0x0

    goto :goto_16

    :cond_25
    :goto_15
    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, v10, Lt2/b;->p:Z

    goto/16 :goto_1a

    :cond_26
    const-string v2, "text-decoration"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "underline"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    iput v0, v10, Lt2/b;->j:I

    goto/16 :goto_1a

    :cond_27
    const-string v2, "font-family"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {v0}, Lcom/google/common/base/C;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lt2/b;->e:Ljava/lang/String;

    goto/16 :goto_1a

    :cond_28
    const-string v2, "font-weight"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "bold"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v2, 0x1

    iput v2, v10, Lt2/b;->k:I

    goto/16 :goto_1a

    :cond_29
    const/4 v2, 0x1

    const-string v4, "font-style"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v3, "italic"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iput v2, v10, Lt2/b;->l:I

    goto/16 :goto_1a

    :cond_2a
    const-string v2, "font-size"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-static {v0}, Lcom/google/common/base/C;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lt2/a;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid font-size: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WebvttCssParser"

    invoke-static {v2, v0}, Lr2/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_2b
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_17
    const/4 v0, -0x1

    goto :goto_18

    :sswitch_0
    const-string v0, "px"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_17

    :cond_2c
    const/4 v0, 0x2

    goto :goto_18

    :sswitch_1
    const-string v0, "em"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_17

    :cond_2d
    const/4 v0, 0x1

    goto :goto_18

    :sswitch_2
    const-string v0, "%"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_17

    :cond_2e
    const/4 v0, 0x0

    :goto_18
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    iput v0, v10, Lt2/b;->m:I

    goto :goto_19

    :pswitch_1
    const/4 v0, 0x1

    const/4 v3, 0x2

    iput v3, v10, Lt2/b;->m:I

    goto :goto_19

    :pswitch_2
    const/4 v0, 0x1

    const/4 v3, 0x3

    iput v3, v10, Lt2/b;->m:I

    :goto_19
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v10, Lt2/b;->n:F

    :cond_2f
    :goto_1a
    move-object/from16 v0, p0

    move v3, v14

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    goto/16 :goto_e

    :cond_30
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    move-object/from16 v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_32
    :goto_1b
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_33
    :goto_1c
    move-object/from16 v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_34
    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A style block was found after the first cue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    const/4 v0, 0x3

    if-ne v8, v0, :cond_33

    sget-object v0, Lt2/g;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v7}, Lr2/d;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_37

    const/4 v9, 0x0

    goto :goto_1d

    :cond_37
    sget-object v2, Lt2/g;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_38

    const/4 v4, 0x0

    invoke-static {v4, v3, v7, v1}, Lt2/g;->d(Ljava/lang/String;Ljava/util/regex/Matcher;Lr2/d;Ljava/util/ArrayList;)Lt2/c;

    move-result-object v9

    goto :goto_1d

    :cond_38
    const/4 v4, 0x0

    invoke-virtual {v7}, Lr2/d;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3a

    :cond_39
    move-object v9, v4

    goto :goto_1d

    :cond_3a
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v7, v1}, Lt2/g;->d(Ljava/lang/String;Ljava/util/regex/Matcher;Lr2/d;Ljava/util/ArrayList;)Lt2/c;

    move-result-object v9

    :goto_1d
    if-eqz v9, :cond_33

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3b
    new-instance v0, LZ3/x;

    invoke-direct {v0, v6}, LZ3/x;-><init>(Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    :goto_1e
    iget-object v2, v0, LZ3/x;->d:Ljava/lang/Object;

    check-cast v2, [J

    array-length v3, v2

    if-ge v1, v3, :cond_43

    invoke-virtual {v0, v1}, LZ3/x;->y(I)J

    move-result-wide v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1f
    iget-object v8, v0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_3e

    const/4 v10, 0x2

    mul-int/lit8 v9, v4, 0x2

    iget-object v11, v0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v11, [J

    aget-wide v12, v11, v9

    cmp-long v12, v12, v6

    if-gtz v12, :cond_3c

    const/4 v12, 0x1

    add-int/2addr v9, v12

    aget-wide v11, v11, v9

    cmp-long v9, v6, v11

    if-gez v9, :cond_3c

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt2/c;

    iget-object v9, v8, Lt2/c;->a:Lq2/b;

    iget v11, v9, Lq2/b;->c:F

    const v12, -0x800001

    cmpl-float v11, v11, v12

    if-nez v11, :cond_3d

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    :goto_20
    const/4 v8, 0x1

    goto :goto_21

    :cond_3d
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :goto_21
    add-int/2addr v4, v8

    goto :goto_1f

    :cond_3e
    const/4 v10, 0x2

    new-instance v4, LB0/r;

    const/16 v8, 0x10

    invoke-direct {v4, v8}, LB0/r;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v4, 0x0

    :goto_22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_3f

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt2/c;

    iget-object v8, v8, Lt2/c;->a:Lq2/b;

    invoke-virtual {v8}, Lq2/b;->a()Lq2/a;

    move-result-object v8

    const/4 v11, -0x1

    rsub-int/lit8 v9, v4, -0x1

    int-to-float v9, v9

    iput v9, v8, Lq2/a;->c:F

    const/4 v9, 0x1

    iput v9, v8, Lq2/a;->d:I

    invoke-virtual {v8}, Lq2/a;->a()Lq2/b;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v9

    goto :goto_22

    :cond_3f
    const/4 v9, 0x1

    const/4 v11, -0x1

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_40

    move-object/from16 v3, p2

    move v2, v9

    goto :goto_24

    :cond_40
    array-length v2, v2

    sub-int/2addr v2, v9

    if-eq v1, v2, :cond_42

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, LZ3/x;->y(I)J

    move-result-wide v2

    invoke-virtual {v0, v1}, LZ3/x;->y(I)J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_41

    new-instance v2, Ls2/a;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Ls2/a;-><init>(Ljava/util/ArrayList;JJ)V

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Lr2/b;->accept(Ljava/lang/Object;)V

    goto :goto_23

    :cond_41
    move-object/from16 v3, p2

    :goto_23
    const/4 v2, 0x1

    :goto_24
    add-int/2addr v1, v2

    goto/16 :goto_1e

    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_43
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j(LN3/p;)LN3/k;
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, LN3/p;->getCacheEntry()LN3/b;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v3, :cond_0

    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v3

    goto/16 :goto_6

    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v3, LN3/b;->b:Ljava/lang/String;

    if-eqz v5, :cond_1

    const-string v6, "If-None-Match"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v5, v3, LN3/b;->d:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_2

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "If-Modified-Since"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    move-object v3, v4

    :goto_1
    :try_start_2
    iget-object v4, p0, Lt9/c;->b:Ljava/lang/Object;

    check-cast v4, LF6/e;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v4, p1, v3}, LF6/e;->k(LN3/p;Ljava/util/Map;)Lcom/android/volley/toolbox/a;

    move-result-object v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    iget v5, v3, Lcom/android/volley/toolbox/a;->a:I

    iget-object v4, v3, Lcom/android/volley/toolbox/a;->b:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    const/16 v4, 0x130

    if-ne v5, v4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {p1, v4, v5, v10}, LG5/D;->g(LN3/p;JLjava/util/List;)LN3/k;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception v4

    move-object v5, v2

    move-object v2, v3

    goto/16 :goto_7

    :cond_3
    iget-object v4, v3, Lcom/android/volley/toolbox/a;->d:Ljava/lang/Object;

    check-cast v4, Ljava/io/InputStream;

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v2

    :goto_2
    if-eqz v4, :cond_5

    iget v6, v3, Lcom/android/volley/toolbox/a;->c:I

    iget-object v7, p0, Lt9/c;->c:Ljava/lang/Object;

    check-cast v7, Lcom/android/volley/toolbox/a;

    invoke-static {v4, v6, v7}, LG5/D;->h(Ljava/io/InputStream;ILcom/android/volley/toolbox/a;)[B

    move-result-object v2

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    new-array v2, v4, [B

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    sget-boolean v4, LN3/A;->a:Z

    if-nez v4, :cond_6

    const-wide/16 v8, 0xbb8

    cmp-long v4, v6, v8

    if-lez v4, :cond_8

    :cond_6
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    if-eqz v2, :cond_7

    array-length v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_4

    :cond_7
    const-string v6, "null"

    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1}, LN3/p;->getRetryPolicy()LN3/u;

    move-result-object v8

    check-cast v8, LN3/e;

    iget v8, v8, LN3/e;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {p1, v4, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    invoke-static {v6, v4}, LN3/A;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    const/16 v4, 0xc8

    if-lt v5, v4, :cond_9

    const/16 v4, 0x12b

    if-gt v5, v4, :cond_9

    new-instance v11, LN3/k;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v6, v0

    const/4 v7, 0x0

    move-object v4, v11

    move-object v6, v2

    invoke-direct/range {v4 .. v10}, LN3/k;-><init>(I[BZJLjava/util/List;)V

    return-object v11

    :cond_9
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_2
    move-exception v4

    :goto_5
    move-object v5, v2

    goto :goto_7

    :catch_3
    move-exception v3

    move-object v4, v3

    goto :goto_5

    :goto_6
    move-object v5, v2

    move-object v4, v3

    :goto_7
    instance-of v3, v4, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_a

    new-instance v2, LA7/h;

    new-instance v3, LN3/w;

    invoke-direct {v3}, LN3/x;-><init>()V

    const-string v4, "socket"

    invoke-direct {v2, v4, v3}, LA7/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_a
    instance-of v3, v4, Ljava/net/MalformedURLException;

    if-nez v3, :cond_14

    if-eqz v2, :cond_11

    iget v10, v2, Lcom/android/volley/toolbox/a;->a:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, LN3/p;->getUrl()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Unexpected response code %d for %s"

    invoke-static {v4, v3}, LN3/A;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_10

    iget-object v2, v2, Lcom/android/volley/toolbox/a;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    new-instance v2, LN3/k;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v7, v3, v0

    const/4 v6, 0x0

    move-object v3, v2

    move v4, v10

    invoke-direct/range {v3 .. v9}, LN3/k;-><init>(I[BZJLjava/util/List;)V

    const/16 v3, 0x191

    if-eq v10, v3, :cond_f

    const/16 v3, 0x193

    if-ne v10, v3, :cond_b

    goto :goto_a

    :cond_b
    const/16 v3, 0x190

    if-lt v10, v3, :cond_d

    const/16 v3, 0x1f3

    if-le v10, v3, :cond_c

    goto :goto_8

    :cond_c
    new-instance p0, LN3/d;

    invoke-direct {p0, v2}, LN3/x;-><init>(LN3/k;)V

    throw p0

    :cond_d
    :goto_8
    const/16 v3, 0x1f4

    if-lt v10, v3, :cond_e

    const/16 v3, 0x257

    if-gt v10, v3, :cond_e

    invoke-virtual {p1}, LN3/p;->shouldRetryServerErrors()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v3, LA7/h;

    new-instance v4, LN3/v;

    invoke-direct {v4, v2}, LN3/x;-><init>(LN3/k;)V

    const-string v2, "server"

    invoke-direct {v3, v2, v4}, LA7/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_9
    move-object v2, v3

    goto :goto_b

    :cond_e
    new-instance p0, LN3/v;

    invoke-direct {p0, v2}, LN3/x;-><init>(LN3/k;)V

    throw p0

    :cond_f
    :goto_a
    new-instance v3, LA7/h;

    new-instance v4, LN3/a;

    invoke-direct {v4, v2}, LN3/x;-><init>(LN3/k;)V

    const-string v2, "auth"

    invoke-direct {v3, v2, v4}, LA7/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :cond_10
    new-instance v2, LA7/h;

    new-instance v3, LN3/j;

    invoke-direct {v3}, LN3/x;-><init>()V

    const-string v4, "network"

    invoke-direct {v2, v4, v3}, LA7/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_11
    invoke-virtual {p1}, LN3/p;->shouldRetryConnectionErrors()Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, LA7/h;

    new-instance v3, LN3/l;

    invoke-direct {v3}, LN3/x;-><init>()V

    const-string v4, "connection"

    invoke-direct {v2, v4, v3}, LA7/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_b
    iget-object v3, v2, LA7/h;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "]"

    invoke-virtual {p1}, LN3/p;->getRetryPolicy()LN3/u;

    move-result-object v5

    invoke-virtual {p1}, LN3/p;->getTimeoutMs()I

    move-result v6

    :try_start_5
    iget-object v2, v2, LA7/h;->b:Ljava/lang/Object;

    check-cast v2, LN3/x;

    check-cast v5, LN3/e;

    iget v7, v5, LN3/e;->b:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, LN3/e;->b:I

    iget v8, v5, LN3/e;->a:I

    int-to-float v9, v8

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v5, LN3/e;->a:I

    iget v5, v5, LN3/e;->c:I
    :try_end_5
    .catch LN3/x; {:try_start_5 .. :try_end_5} :catch_4

    if-gt v7, v5, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-retry [timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, LN3/p;->addMarker(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    :try_start_6
    throw v2
    :try_end_6
    .catch LN3/x; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-timeout-giveup [timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, LN3/p;->addMarker(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p0, LN3/l;

    invoke-direct {p0, v4}, LN3/x;-><init>(Ljava/lang/Exception;)V

    throw p0

    :cond_14
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad URL "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, LN3/p;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public k()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lt9/c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    iget-object p0, p0, Lt9/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CrossProcessLock"

    const-string v1, "encountered error while releasing, ignoring"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lt9/c;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimationResult(endReason="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lt9/c;->c:Ljava/lang/Object;

    check-cast v1, LQ/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lt9/c;->b:Ljava/lang/Object;

    check-cast p0, LQ/i;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
