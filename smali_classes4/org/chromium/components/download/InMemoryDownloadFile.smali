.class public Lorg/chromium/components/download/InMemoryDownloadFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mFos:Ljava/io/FileOutputStream;

.field private mPfd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lf1/y0;->n(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/download/InMemoryDownloadFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lorg/chromium/components/download/InMemoryDownloadFile;->mFos:Ljava/io/FileOutputStream;

    return-void
.end method

.method private static createFile(Ljava/lang/String;)Lorg/chromium/components/download/InMemoryDownloadFile;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/chromium/components/download/InMemoryDownloadFile;

    invoke-direct {v0, p0}, Lorg/chromium/components/download/InMemoryDownloadFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private destroy()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/chromium/components/download/InMemoryDownloadFile;->mFos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/chromium/components/download/InMemoryDownloadFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v0, "InMemoryDownload"

    const-string v1, "failed to close memory file."

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private finish()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/chromium/components/download/InMemoryDownloadFile;->mFos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/download/InMemoryDownloadFile;->mFos:Ljava/io/FileOutputStream;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/chromium/components/download/InMemoryDownloadFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v0, "InMemoryDownload"

    const-string v1, "failed to close output stream."

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private getFd()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/download/InMemoryDownloadFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private writeData([B)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/chromium/components/download/InMemoryDownloadFile;->mFos:Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "InMemoryDownload"

    const-string v0, "failed to write data to file."

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
