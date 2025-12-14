.class public Lorg/chromium/device/bluetooth/ChromeBluetoothSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mInputStream:Ljava/io/InputStream;

.field private final mOutputStream:Ljava/io/OutputStream;

.field final mSocket:Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothSocket;->mSocket:Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothSocket;->mInputStream:Ljava/io/InputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothSocket;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private close()V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "Bluetooth"

    invoke-static {}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->getInstance()Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->assertOnBackgroundThread()V

    :try_start_0
    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothSocket;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to close Bluetooth socket input stream."

    invoke-static {v0, v2, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothSocket;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Failed to close Bluetooth socket output stream."

    invoke-static {v0, v2, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    :try_start_2
    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothSocket;->mSocket:Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    const-string v1, "Failed to close Bluetooth socket."

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private connect()Lorg/chromium/device/bluetooth/Outcome;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/device/bluetooth/Outcome<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothSocket;->mSocket:Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;->connect()V

    new-instance p0, Lorg/chromium/device/bluetooth/Outcome;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/device/bluetooth/Outcome;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/chromium/device/bluetooth/Outcome;

    invoke-direct {v0, p0}, Lorg/chromium/device/bluetooth/Outcome;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method private static create(Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;)Lorg/chromium/device/bluetooth/ChromeBluetoothSocket;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothSocket;

    invoke-direct {v0, p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothSocket;-><init>(Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;)V

    return-object v0
.end method

.method private isConnected()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothSocket;->mSocket:Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;

    invoke-virtual {p0}, Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;->isConnected()Z

    move-result p0

    return p0
.end method

.method private receive([BII)Lorg/chromium/device/bluetooth/Outcome;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lorg/chromium/device/bluetooth/Outcome<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->getInstance()Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->assertOnBackgroundThread()V

    :try_start_0
    new-instance v0, Lorg/chromium/device/bluetooth/Outcome;

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothSocket;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/chromium/device/bluetooth/Outcome;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/chromium/device/bluetooth/Outcome;

    invoke-direct {p1, p0}, Lorg/chromium/device/bluetooth/Outcome;-><init>(Ljava/lang/Exception;)V

    return-object p1
.end method

.method private send([BII)Lorg/chromium/device/bluetooth/Outcome;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lorg/chromium/device/bluetooth/Outcome<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->getInstance()Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->assertOnBackgroundThread()V

    :try_start_0
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothSocket;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object p0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothSocket;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    new-instance p0, Lorg/chromium/device/bluetooth/Outcome;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/chromium/device/bluetooth/Outcome;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/chromium/device/bluetooth/Outcome;

    invoke-direct {p1, p0}, Lorg/chromium/device/bluetooth/Outcome;-><init>(Ljava/lang/Exception;)V

    return-object p1
.end method
