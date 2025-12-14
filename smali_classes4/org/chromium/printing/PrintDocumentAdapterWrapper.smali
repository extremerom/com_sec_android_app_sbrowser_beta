.class public Lorg/chromium/printing/PrintDocumentAdapterWrapper;
.super Landroid/print/PrintDocumentAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;,
        Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapperImpl;,
        Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;,
        Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapperImpl;,
        Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mPdfGenerator:Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;


# direct methods
.method public constructor <init>(Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;)V
    .locals 0

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    iput-object p1, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper;->mPdfGenerator:Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    invoke-super {p0}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    iget-object p0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper;->mPdfGenerator:Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;

    invoke-interface {p0}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;->onFinish()V

    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper;->mPdfGenerator:Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;

    new-instance v4, Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapperImpl;

    invoke-direct {v4, p4}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapperImpl;-><init>(Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper;->mPdfGenerator:Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;

    invoke-interface {p0}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;->onStart()V

    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper;->mPdfGenerator:Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;

    new-instance v0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapperImpl;

    invoke-direct {v0, p4}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapperImpl;-><init>(Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    invoke-interface {p0, p1, p2, p3, v0}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;->onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;)V

    return-void
.end method

.method public print(Lorg/chromium/printing/PrintManagerDelegate;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, p2, p0, v0}, Lorg/chromium/printing/PrintManagerDelegate;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)V

    return-void
.end method
