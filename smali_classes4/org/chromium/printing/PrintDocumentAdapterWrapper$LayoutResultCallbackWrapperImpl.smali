.class public Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapperImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/printing/PrintDocumentAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutResultCallbackWrapperImpl"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;


# direct methods
.method public constructor <init>(Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapperImpl;->mCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    return-void
.end method


# virtual methods
.method public onLayoutFailed(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapperImpl;->mCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {p0, p1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapperImpl;->mCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {p0, p1, p2}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    return-void
.end method
