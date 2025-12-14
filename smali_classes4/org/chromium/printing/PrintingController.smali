.class public interface abstract Lorg/chromium/printing/PrintingController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract getDpi()I
.end method

.method public abstract getFileDescriptor()I
.end method

.method public abstract getPageHeight()I
.end method

.method public abstract getPageNumbers()[I
.end method

.method public abstract getPageWidth()I
.end method

.method public abstract hasPrintingFinished()Z
.end method

.method public abstract isBusy()Z
.end method

.method public abstract isPdfWritingInProgress()Z
.end method

.method public abstract pdfWritingDone(I)V
.end method

.method public abstract reset()V
.end method

.method public abstract setPendingPrint(Lorg/chromium/printing/Printable;Lorg/chromium/printing/PrintManagerDelegate;II)V
.end method

.method public abstract startPendingPrint()V
.end method

.method public abstract startPrint(Lorg/chromium/printing/Printable;Lorg/chromium/printing/PrintManagerDelegate;)V
.end method
