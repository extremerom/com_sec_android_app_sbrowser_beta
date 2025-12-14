.class public Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;->mSocket:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->close()V

    return-void
.end method

.method public connect()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public isConnected()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/bluetooth/wrapper/BluetoothSocketWrapper;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result p0

    return p0
.end method
