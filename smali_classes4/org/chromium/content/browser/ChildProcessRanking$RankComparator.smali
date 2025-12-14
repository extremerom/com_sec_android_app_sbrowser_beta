.class Lorg/chromium/content/browser/ChildProcessRanking$RankComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ChildProcessRanking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RankComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessRanking$RankComparator;-><init>()V

    return-void
.end method

.method private static compareByIntersectsViewportAndDepth(Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;)I
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->intersectsViewport:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->intersectsViewport:Z

    if-nez v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->intersectsViewport:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-wide v0, p0, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->frameDepth:J

    iget-wide p0, p1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->frameDepth:J

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;

    check-cast p2, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/ChildProcessRanking$RankComparator;->compare(Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;)I

    move-result p0

    return p0
.end method

.method public compare(Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;)I
    .locals 10

    iget-boolean p0, p1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->visible:Z

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p0, :cond_0

    iget-wide v5, p1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->frameDepth:J

    cmp-long v5, v5, v1

    if-eqz v5, :cond_1

    :cond_0
    iget v5, p1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->importance:I

    if-ne v5, v0, :cond_2

    :cond_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    iget-boolean v6, p2, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->visible:Z

    if-eqz v6, :cond_3

    iget-wide v7, p2, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->frameDepth:J

    cmp-long v7, v7, v1

    if-eqz v7, :cond_4

    :cond_3
    iget v7, p2, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->importance:I

    if-ne v7, v0, :cond_5

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    if-eqz v5, :cond_6

    if-eqz v0, :cond_6

    invoke-static {p1, p2}, Lorg/chromium/content/browser/ChildProcessRanking$RankComparator;->compareByIntersectsViewportAndDepth(Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;)I

    move-result p0

    return p0

    :cond_6
    const/4 v7, -0x1

    if-eqz v5, :cond_7

    if-nez v0, :cond_7

    return v7

    :cond_7
    if-nez v5, :cond_8

    if-eqz v0, :cond_8

    return v4

    :cond_8
    if-eqz p0, :cond_9

    iget-wide v8, p1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->frameDepth:J

    cmp-long v0, v8, v1

    if-lez v0, :cond_9

    iget-boolean v0, p1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->intersectsViewport:Z

    if-nez v0, :cond_a

    :cond_9
    iget v0, p1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->importance:I

    if-ne v0, v4, :cond_b

    :cond_a
    move v0, v4

    goto :goto_2

    :cond_b
    move v0, v3

    :goto_2
    if-eqz v6, :cond_c

    iget-wide v8, p2, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->frameDepth:J

    cmp-long v1, v8, v1

    if-lez v1, :cond_c

    iget-boolean v1, p2, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->intersectsViewport:Z

    if-nez v1, :cond_d

    :cond_c
    iget v1, p2, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->importance:I

    if-ne v1, v4, :cond_e

    :cond_d
    move v1, v4

    goto :goto_3

    :cond_e
    move v1, v3

    :goto_3
    if-eqz v0, :cond_f

    if-eqz v1, :cond_f

    invoke-static {p1, p2}, Lorg/chromium/content/browser/ChildProcessRanking$RankComparator;->compareByIntersectsViewportAndDepth(Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;)I

    move-result p0

    return p0

    :cond_f
    if-eqz v0, :cond_10

    if-nez v1, :cond_10

    return v7

    :cond_10
    if-nez v0, :cond_11

    if-eqz v1, :cond_11

    return v4

    :cond_11
    if-eqz p0, :cond_12

    if-eqz v6, :cond_12

    invoke-static {p1, p2}, Lorg/chromium/content/browser/ChildProcessRanking$RankComparator;->compareByIntersectsViewportAndDepth(Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;)I

    move-result p0

    return p0

    :cond_12
    if-eqz p0, :cond_13

    if-nez v6, :cond_13

    return v7

    :cond_13
    if-nez p0, :cond_14

    if-eqz v6, :cond_14

    return v4

    :cond_14
    return v3
.end method
