.class public interface abstract Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/printing/PrintDocumentAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PdfGenerator"
.end annotation


# virtual methods
.method public abstract onFinish()V
.end method

.method public abstract onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;Landroid/os/Bundle;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;)V
.end method
