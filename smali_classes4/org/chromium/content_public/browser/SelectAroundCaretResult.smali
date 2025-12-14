.class public Lorg/chromium/content_public/browser/SelectAroundCaretResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mExtendedEndAdjust:I

.field private final mExtendedStartAdjust:I

.field private final mWordEndAdjust:I

.field private final mWordStartAdjust:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/content_public/browser/SelectAroundCaretResult;->mExtendedStartAdjust:I

    iput p2, p0, Lorg/chromium/content_public/browser/SelectAroundCaretResult;->mExtendedEndAdjust:I

    iput p3, p0, Lorg/chromium/content_public/browser/SelectAroundCaretResult;->mWordStartAdjust:I

    iput p4, p0, Lorg/chromium/content_public/browser/SelectAroundCaretResult;->mWordEndAdjust:I

    return-void
.end method
