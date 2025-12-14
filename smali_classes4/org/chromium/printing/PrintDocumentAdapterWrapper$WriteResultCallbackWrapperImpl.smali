.class public Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapperImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/printing/PrintDocumentAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteResultCallbackWrapperImpl"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;


# direct methods
.method public constructor <init>(Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapperImpl;->mCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    return-void
.end method


# virtual methods
.method public onWriteCancelled()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapperImpl;->mCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {p0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    return-void
.end method

.method public onWriteFailed(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapperImpl;->mCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {p0, p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWriteFinished([Landroid/print/PageRange;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapperImpl;->mCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {p0, p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    return-void
.end method
