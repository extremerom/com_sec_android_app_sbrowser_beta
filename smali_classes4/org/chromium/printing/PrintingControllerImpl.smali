.class public Lorg/chromium/printing/PrintingControllerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/printing/PrintingController;
.implements Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static sInstance:Lorg/chromium/printing/PrintingController;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mDpi:I

.field private mErrorMessage:Ljava/lang/String;

.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mIsBusy:Z

.field private mIsPdfWritingInProgress:Z

.field private mMediaSize:Landroid/print/PrintAttributes$MediaSize;

.field private mOnLayoutCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;

.field private mOnWriteCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

.field private mPages:[I

.field private mPrintDocumentAdapterWrapper:Lorg/chromium/printing/PrintDocumentAdapterWrapper;

.field private mPrintManager:Lorg/chromium/printing/PrintManagerDelegate;

.field private mPrintable:Lorg/chromium/printing/Printable;

.field private mPrintingState:I

.field private mRenderFrameId:I

.field private mRenderProcessId:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    new-instance v0, Lorg/chromium/printing/PrintDocumentAdapterWrapper;

    invoke-direct {v0, p0}, Lorg/chromium/printing/PrintDocumentAdapterWrapper;-><init>(Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;)V

    iput-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintDocumentAdapterWrapper:Lorg/chromium/printing/PrintDocumentAdapterWrapper;

    return-void
.end method

.method private closeFileDescriptor()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iput-object v1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    throw v0

    :goto_0
    return-void
.end method

.method private static convertIntegerArrayToPageRanges([II)[Landroid/print/PageRange;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length p1, p0

    new-array v1, p1, [Landroid/print/PageRange;

    :goto_0
    if-ge v0, p1, :cond_1

    aget v2, p0, v0

    new-instance v3, Landroid/print/PageRange;

    invoke-direct {v3, v2, v2}, Landroid/print/PageRange;-><init>(II)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    new-array v1, p0, [Landroid/print/PageRange;

    new-instance v2, Landroid/print/PageRange;

    sub-int/2addr p1, p0

    invoke-direct {v2, v0, p1}, Landroid/print/PageRange;-><init>(II)V

    aput-object v2, v1, v0

    :cond_1
    return-object v1
.end method

.method private static convertPageRangesToIntegerArray([Landroid/print/PageRange;)[I
    .locals 7

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    aget-object v0, p0, v2

    sget-object v1, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    invoke-virtual {v0, v1}, Landroid/print/PageRange;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/print/PageRange;->getStart()I

    move-result v5

    :goto_1
    invoke-virtual {v4}, Landroid/print/PageRange;->getEnd()I

    move-result v6

    if-gt v5, v6, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v1, p0, [I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    if-ge v2, p0, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method public static getInstance()Lorg/chromium/printing/PrintingController;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lorg/chromium/printing/PrintingControllerImpl;->sInstance:Lorg/chromium/printing/PrintingController;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/printing/PrintingControllerImpl;

    invoke-direct {v0}, Lorg/chromium/printing/PrintingControllerImpl;-><init>()V

    sput-object v0, Lorg/chromium/printing/PrintingControllerImpl;->sInstance:Lorg/chromium/printing/PrintingController;

    :cond_0
    sget-object v0, Lorg/chromium/printing/PrintingControllerImpl;->sInstance:Lorg/chromium/printing/PrintingController;

    return-object v0
.end method

.method private onWriteForPdfPage(Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .locals 7

    const-string v0, "Failed to close input or output stream."

    const-string v1, "printing"

    const/4 v2, 0x1

    iput v2, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lorg/chromium/printing/PrintingControllerImpl;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v4}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x2000

    :try_start_2
    new-array v2, v2, [B

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_0

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v2, v6, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_1
    move-object v2, p1

    goto :goto_7

    :catch_0
    :goto_2
    move-object v2, p1

    goto :goto_5

    :cond_0
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnWriteCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    invoke-static {p2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    invoke-interface {p2}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;->onWriteCancelled()V

    goto :goto_3

    :cond_1
    iput v6, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    invoke-direct {p0}, Lorg/chromium/printing/PrintingControllerImpl;->closeFileDescriptor()V

    iget-object p2, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnWriteCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    invoke-static {p2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    sget-object v2, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    filled-new-array {v2}, [Landroid/print/PageRange;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;->onWriteFinished([Landroid/print/PageRange;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :goto_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    invoke-static {v1, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object v3, v2

    goto :goto_1

    :catch_2
    move-object v3, v2

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v3, v2

    goto :goto_7

    :catch_3
    move-object v3, v2

    :goto_5
    :try_start_4
    iget-object p1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnWriteCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    iget-object p0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mErrorMessage:Ljava/lang/String;

    invoke-interface {p1, p0}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    :goto_6
    return-void

    :catchall_3
    move-exception p0

    :goto_7
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :catch_4
    invoke-static {v1, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_8
    throw p0
.end method

.method private resetCallbacks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnWriteCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    iput-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnLayoutCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;

    return-void
.end method


# virtual methods
.method public getDpi()I
    .locals 0

    iget p0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mDpi:I

    return p0
.end method

.method public getFileDescriptor()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p0

    return p0
.end method

.method public getPageHeight()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {p0}, Landroid/print/PrintAttributes$MediaSize;->getHeightMils()I

    move-result p0

    return p0
.end method

.method public getPageNumbers()[I
    .locals 0

    iget-object p0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPages:[I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    :goto_0
    return-object p0
.end method

.method public getPageWidth()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {p0}, Landroid/print/PrintAttributes$MediaSize;->getWidthMils()I

    move-result p0

    return p0
.end method

.method public hasPrintingFinished()Z
    .locals 1

    iget p0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBusy()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mIsBusy:Z

    return p0
.end method

.method public isPdfWritingInProgress()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mIsPdfWritingInProgress:Z

    return p0
.end method

.method public onFinish()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPages:[I

    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mRenderProcessId:I

    iput v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mRenderFrameId:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    invoke-direct {p0}, Lorg/chromium/printing/PrintingControllerImpl;->closeFileDescriptor()V

    invoke-direct {p0}, Lorg/chromium/printing/PrintingControllerImpl;->resetCallbacks()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mIsBusy:Z

    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {p1}, Landroid/print/PrintAttributes$Resolution;->getHorizontalDpi()I

    move-result p1

    iput p1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mDpi:I

    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    iput-object p4, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnLayoutCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;

    iget p1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mErrorMessage:Ljava/lang/String;

    invoke-interface {p4, p1}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;->onLayoutFailed(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/chromium/printing/PrintingControllerImpl;->resetCallbacks()V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/print/PrintDocumentInfo$Builder;

    iget-object p3, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintable:Lorg/chromium/printing/Printable;

    invoke-static {p3}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/chromium/printing/Printable;

    invoke-interface {p3}, Lorg/chromium/printing/Printable;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object p1

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnLayoutCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;

    invoke-interface {p0, p1, p2}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;)V
    .locals 1

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object p4, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnWriteCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    :try_start_0
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/printing/PrintingControllerImpl;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lorg/chromium/printing/PrintingControllerImpl;->convertPageRangesToIntegerArray([Landroid/print/PageRange;)[I

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPages:[I

    iget-object p1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintable:Lorg/chromium/printing/Printable;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/printing/Printable;

    invoke-interface {p1}, Lorg/chromium/printing/Printable;->getPdfFilePath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintable:Lorg/chromium/printing/Printable;

    iget p2, p0, Lorg/chromium/printing/PrintingControllerImpl;->mRenderProcessId:I

    iget p3, p0, Lorg/chromium/printing/PrintingControllerImpl;->mRenderFrameId:I

    invoke-interface {p1, p2, p3}, Lorg/chromium/printing/Printable;->print(II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput p1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnWriteCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    iget-object p2, p0, Lorg/chromium/printing/PrintingControllerImpl;->mErrorMessage:Ljava/lang/String;

    invoke-interface {p1, p2}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;->onWriteFailed(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/chromium/printing/PrintingControllerImpl;->resetCallbacks()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p3}, Lorg/chromium/printing/PrintingControllerImpl;->onWriteForPdfPage(Ljava/lang/String;Landroid/os/CancellationSignal;)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnWriteCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "ParcelFileDescriptor.dup() failed: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;->onWriteFailed(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/chromium/printing/PrintingControllerImpl;->resetCallbacks()V

    return-void

    :cond_3
    :goto_1
    const/4 p0, 0x0

    invoke-interface {p4, p0}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;->onWriteFailed(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public pdfWritingDone(I)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mIsPdfWritingInProgress:Z

    iget v1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintingState:I

    invoke-direct {p0}, Lorg/chromium/printing/PrintingControllerImpl;->closeFileDescriptor()V

    if-lez p1, :cond_1

    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPages:[I

    invoke-static {v0, p1}, Lorg/chromium/printing/PrintingControllerImpl;->convertIntegerArrayToPageRanges([II)[Landroid/print/PageRange;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnWriteCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    invoke-interface {p0, p1}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;->onWriteFinished([Landroid/print/PageRange;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mOnWriteCallback:Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;

    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mErrorMessage:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;->onWriteFailed(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/chromium/printing/PrintingControllerImpl;->resetCallbacks()V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/printing/PrintingControllerImpl;->onFinish()V

    return-void
.end method

.method public setPendingPrint(Lorg/chromium/printing/Printable;Lorg/chromium/printing/PrintManagerDelegate;II)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mIsBusy:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "printing"

    const-string p2, "Pending print can\'t be set. PrintingController is busy."

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-object p1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintable:Lorg/chromium/printing/Printable;

    invoke-interface {p1}, Lorg/chromium/printing/Printable;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mErrorMessage:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintManager:Lorg/chromium/printing/PrintManagerDelegate;

    iput p3, p0, Lorg/chromium/printing/PrintingControllerImpl;->mRenderProcessId:I

    iput p4, p0, Lorg/chromium/printing/PrintingControllerImpl;->mRenderFrameId:I

    return-void
.end method

.method public startPendingPrint()V
    .locals 3

    iget-boolean v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mIsBusy:Z

    const/4 v1, 0x0

    const-string v2, "printing"

    if-eqz v0, :cond_0

    const-string p0, "Pending print can\'t be started. PrintingController is busy."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintManager:Lorg/chromium/printing/PrintManagerDelegate;

    if-nez v0, :cond_1

    const-string p0, "Pending print can\'t be started. No PrintManager provided."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintable:Lorg/chromium/printing/Printable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/chromium/printing/Printable;->canPrint()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mIsBusy:Z

    iput-boolean v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mIsPdfWritingInProgress:Z

    iget-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintDocumentAdapterWrapper:Lorg/chromium/printing/PrintDocumentAdapterWrapper;

    iget-object v1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintManager:Lorg/chromium/printing/PrintManagerDelegate;

    iget-object v2, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintable:Lorg/chromium/printing/Printable;

    invoke-interface {v2}, Lorg/chromium/printing/Printable;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/printing/PrintDocumentAdapterWrapper;->print(Lorg/chromium/printing/PrintManagerDelegate;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mPrintManager:Lorg/chromium/printing/PrintManagerDelegate;

    return-void

    :cond_3
    :goto_0
    const-string p0, "Pending print can\'t be started. Printable can\'t perform printing."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public startPrint(Lorg/chromium/printing/Printable;Lorg/chromium/printing/PrintManagerDelegate;)V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mIsBusy:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/chromium/printing/PrintingControllerImpl;->mRenderProcessId:I

    iget v1, p0, Lorg/chromium/printing/PrintingControllerImpl;->mRenderFrameId:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/chromium/printing/PrintingControllerImpl;->setPendingPrint(Lorg/chromium/printing/Printable;Lorg/chromium/printing/PrintManagerDelegate;II)V

    invoke-virtual {p0}, Lorg/chromium/printing/PrintingControllerImpl;->startPendingPrint()V

    return-void
.end method
