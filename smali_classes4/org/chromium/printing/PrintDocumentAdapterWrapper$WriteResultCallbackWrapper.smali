.class public interface abstract Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/printing/PrintDocumentAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WriteResultCallbackWrapper"
.end annotation


# virtual methods
.method public abstract onWriteCancelled()V
.end method

.method public abstract onWriteFailed(Ljava/lang/CharSequence;)V
.end method

.method public abstract onWriteFinished([Landroid/print/PageRange;)V
.end method
