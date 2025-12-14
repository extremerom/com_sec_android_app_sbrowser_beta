.class public final Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion$ITEM_COMPARATOR$2$1;
.super Landroidx/recyclerview/widget/A;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/A;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "com/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion$ITEM_COMPARATOR$2$1",
        "Landroidx/recyclerview/widget/A;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
        "oldItem",
        "newItem",
        "",
        "areItemsTheSame",
        "(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)Z",
        "areContentsTheSame",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)Z
    .locals 0

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    check-cast p2, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion$ITEM_COMPARATOR$2$1;->areContentsTheSame(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)Z
    .locals 2

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->getId()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->getId()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    check-cast p2, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion$ITEM_COMPARATOR$2$1;->areItemsTheSame(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)Z

    move-result p0

    return p0
.end method
