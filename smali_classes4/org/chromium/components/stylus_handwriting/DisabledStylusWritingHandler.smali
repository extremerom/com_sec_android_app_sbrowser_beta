.class public Lorg/chromium/components/stylus_handwriting/DisabledStylusWritingHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/stylus_handwriting/StylusApiOption;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStylusPointerIcon()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onWebContentsChanged(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lorg/chromium/content_public/browser/WebContents;->setStylusWritingHandler(Lorg/chromium/content_public/browser/StylusWritingHandler;)V

    return-void
.end method
