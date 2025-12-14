.class public Lcom/sec/terrace/content/directwriting/TinStylusWritingController;
.super Lorg/chromium/components/stylus_handwriting/StylusWritingController;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getHandler()Lorg/chromium/components/stylus_handwriting/StylusApiOption;
    .locals 0

    invoke-super {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->getHandler()Lorg/chromium/components/stylus_handwriting/StylusApiOption;

    move-result-object p0

    return-object p0
.end method

.method public hideHandwritingToolbar()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/content/directwriting/TinStylusWritingController;->getHandler()Lorg/chromium/components/stylus_handwriting/StylusApiOption;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/components/stylus_handwriting/StylusApiOption;->hideHandwritingToolbar()V

    return-void
.end method

.method public onWebContentsChanged(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->onWebContentsChanged(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public setStylusWritingIconSupplierForView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/sec/terrace/content/browser/TinContentView;

    new-instance v0, LOa/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LOa/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lorg/chromium/components/embedder_support/view/ContentView;->setStylusWritingIconSupplier(Ljava/util/function/Supplier;)V

    return-void
.end method
