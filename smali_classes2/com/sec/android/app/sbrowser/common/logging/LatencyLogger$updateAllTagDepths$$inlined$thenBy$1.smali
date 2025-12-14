.class public final Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$updateAllTagDepths$$inlined$thenBy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $this_thenBy:Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$updateAllTagDepths$$inlined$thenBy$1;->$this_thenBy:Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$Tag;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$Tag;->getStartMillis()J

    move-result-wide p0

    neg-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p2, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$Tag;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$Tag;->getStartMillis()J

    move-result-wide p1

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, LG5/A3;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    :goto_0
    return p0
.end method
