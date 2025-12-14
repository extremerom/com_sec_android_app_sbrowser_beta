.class Lorg/chromium/media/VideoCapture$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/VideoCapture;->getClosestFramerateRange(Ljava/util/List;I)Lorg/chromium/media/VideoCapture$FramerateRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/chromium/media/VideoCapture$FramerateRange;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$targetFramerate:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, Lorg/chromium/media/VideoCapture$1;->val$targetFramerate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private progressivePenalty(IIII)I
    .locals 0

    if-ge p1, p2, :cond_0

    mul-int/2addr p1, p3

    goto :goto_0

    :cond_0
    mul-int/2addr p3, p2

    sub-int/2addr p1, p2

    mul-int/2addr p1, p4

    add-int/2addr p1, p3

    :goto_0
    return p1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/chromium/media/VideoCapture$FramerateRange;

    check-cast p2, Lorg/chromium/media/VideoCapture$FramerateRange;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/media/VideoCapture$1;->compare(Lorg/chromium/media/VideoCapture$FramerateRange;Lorg/chromium/media/VideoCapture$FramerateRange;)I

    move-result p0

    return p0
.end method

.method public compare(Lorg/chromium/media/VideoCapture$FramerateRange;Lorg/chromium/media/VideoCapture$FramerateRange;)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/chromium/media/VideoCapture$1;->diff(Lorg/chromium/media/VideoCapture$FramerateRange;)I

    move-result p1

    invoke-virtual {p0, p2}, Lorg/chromium/media/VideoCapture$1;->diff(Lorg/chromium/media/VideoCapture$FramerateRange;)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public diff(Lorg/chromium/media/VideoCapture$FramerateRange;)I
    .locals 4

    iget v0, p1, Lorg/chromium/media/VideoCapture$FramerateRange;->min:I

    const/4 v1, 0x4

    const/16 v2, 0x1f40

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3, v1}, Lorg/chromium/media/VideoCapture$1;->progressivePenalty(IIII)I

    move-result v0

    iget v1, p0, Lorg/chromium/media/VideoCapture$1;->val$targetFramerate:I

    iget p1, p1, Lorg/chromium/media/VideoCapture$FramerateRange;->max:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v1, 0x1388

    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v3, v2}, Lorg/chromium/media/VideoCapture$1;->progressivePenalty(IIII)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
