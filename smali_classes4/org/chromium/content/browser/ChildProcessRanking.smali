.class public Lorg/chromium/content/browser/ChildProcessRanking;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ChildProcessRanking$ReverseRankIterator;,
        Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;,
        Lorg/chromium/content/browser/ChildProcessRanking$RankComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/chromium/base/process_launcher/ChildProcessConnection;",
        ">;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COMPARATOR:Lorg/chromium/content/browser/ChildProcessRanking$RankComparator;

.field private static final ENABLE_CHECKS:Z


# instance fields
.field private mEnableServiceGroupImportance:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mMaxSize:I

.field private final mRankings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;",
            ">;"
        }
    .end annotation
.end field

.field private final mRebindRunnable:Ljava/lang/Runnable;

.field private mRebindRunnablePending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessRanking;->ENABLE_CHECKS:Z

    new-instance v0, Lorg/chromium/content/browser/ChildProcessRanking$RankComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/ChildProcessRanking$RankComparator;-><init>(I)V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessRanking;->COMPARATOR:Lorg/chromium/content/browser/ChildProcessRanking$RankComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    new-instance v0, Lorg/chromium/content/browser/l;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/chromium/content/browser/l;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRebindRunnable:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mMaxSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    new-instance v0, Lorg/chromium/content/browser/l;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/chromium/content/browser/l;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRebindRunnable:Ljava/lang/Runnable;

    iput p1, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mMaxSize:I

    return-void
.end method

.method private checkGroupImportance()V
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->shouldBeInLowRankGroup()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {v3}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getGroup()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, v2, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {v3}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getImportanceInGroup()I

    move-result v3

    if-le v3, v0, :cond_0

    iget-object v0, v2, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getImportanceInGroup()I

    move-result v0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Wrong group importance order "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {v2}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getImportanceInGroup()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not in low rank group "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v3, v2, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {v3}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getGroup()I

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Should not be in group "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method private checkOrder()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;

    if-lez v0, :cond_1

    sget-object v3, Lorg/chromium/content/browser/ChildProcessRanking;->COMPARATOR:Lorg/chromium/content/browser/ChildProcessRanking$RankComparator;

    iget-object v4, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;

    invoke-virtual {v3, v4, v2}, Lorg/chromium/content/browser/ChildProcessRanking$RankComparator;->compare(Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;)I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Not sorted "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    invoke-virtual {v2}, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->shouldBeInLowRankGroup()Z

    move-result v3

    if-eqz v1, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not in low rank "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static synthetic g(Lorg/chromium/content/browser/ChildProcessRanking;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessRanking;->rebindHighRankConnections()V

    return-void
.end method

.method public static bridge synthetic i(Lorg/chromium/content/browser/ChildProcessRanking;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    return-object p0
.end method

.method private indexOf(Lorg/chromium/base/process_launcher/ChildProcessConnection;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;

    iget-object v1, v1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private postRebindHighRankConnectionsIfNeeded()V
    .locals 4

    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRebindRunnablePending:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRebindRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRebindRunnablePending:Z

    return-void
.end method

.method private rebindHighRankConnections()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRebindRunnablePending:Z

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->shouldBeInLowRankGroup()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {v1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->rebind()V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reposition(I)V
    .locals 6

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lorg/chromium/content/browser/ChildProcessRanking;->COMPARATOR:Lorg/chromium/content/browser/ChildProcessRanking$RankComparator;

    iget-object v3, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;

    invoke-virtual {v2, v3, p1}, Lorg/chromium/content/browser/ChildProcessRanking$RankComparator;->compare(Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;)I

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-boolean v2, Lorg/chromium/content/browser/ChildProcessRanking;->ENABLE_CHECKS:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessRanking;->checkOrder()V

    :cond_1
    iget-boolean v3, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mEnableServiceGroupImportance:Z

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->shouldBeInLowRankGroup()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object p0, p1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getGroup()I

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {p0, v0, v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->updateGroupImportance(II)V

    :cond_3
    return-void

    :cond_4
    const/4 v3, 0x1

    if-nez v1, :cond_5

    move v4, v3

    goto :goto_1

    :cond_5
    move v4, v0

    :goto_1
    iget-object v5, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-ne v1, v5, :cond_6

    move v5, v3

    goto :goto_2

    :cond_6
    move v5, v0

    :goto_2
    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;

    iget-object v0, v0, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getImportanceInGroup()I

    move-result v0

    :goto_3
    if-eqz v5, :cond_8

    const v1, 0x7fffffff

    goto :goto_4

    :cond_8
    iget-object v4, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    add-int/2addr v1, v3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;

    iget-object v1, v1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {v1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getImportanceInGroup()I

    move-result v1

    :goto_4
    iget-object v4, p1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {v4}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getImportanceInGroup()I

    move-result v4

    if-le v4, v0, :cond_9

    iget-object v4, p1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {v4}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getImportanceInGroup()I

    move-result v4

    if-ge v4, v1, :cond_9

    return-void

    :cond_9
    sub-int v4, v1, v0

    const/high16 v5, 0x10000

    if-le v4, v5, :cond_a

    iget-object p1, p1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    add-int/lit16 v1, v1, -0x8000

    invoke-virtual {p1, v3, v1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->updateGroupImportance(II)V

    goto :goto_5

    :cond_a
    const/4 v1, 0x2

    if-le v4, v1, :cond_b

    iget-object p1, p1, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    div-int/2addr v4, v1

    add-int/2addr v4, v0

    invoke-virtual {p1, v3, v4}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->updateGroupImportance(II)V

    goto :goto_5

    :cond_b
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessRanking;->reshuffleGroupImportance()V

    :goto_5
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessRanking;->postRebindHighRankConnectionsIfNeeded()V

    if-eqz v2, :cond_c

    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessRanking;->checkGroupImportance()V

    :cond_c
    return-void
.end method

.method private reshuffleGroupImportance()V
    .locals 5

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const v2, 0x7fff7fff

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->shouldBeInLowRankGroup()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v3, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-virtual {v3, v1, v2}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->updateGroupImportance(II)V

    add-int/lit16 v2, v2, -0x8000

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addConnection(Lorg/chromium/base/process_launcher/ChildProcessConnection;ZJZI)V
    .locals 9

    iget v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mMaxSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mMaxSize:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "mRankings.size:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mMaxSize:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mMaxSize:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    new-instance v8, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;

    move-object v1, v8

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;-><init>(Lorg/chromium/base/process_launcher/ChildProcessConnection;ZJZI)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ChildProcessRanking;->reposition(I)V

    return-void
.end method

.method public enableServiceGroupImportance()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mEnableServiceGroupImportance:Z

    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessRanking;->reshuffleGroupImportance()V

    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessRanking;->postRebindHighRankConnectionsIfNeeded()V

    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessRanking;->ENABLE_CHECKS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessRanking;->checkGroupImportance()V

    :cond_0
    return-void
.end method

.method public getLowestRankedConnection()Lorg/chromium/base/process_launcher/ChildProcessConnection;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {v0, p0}, LV0/c;->g(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;

    iget-object p0, p0, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/chromium/base/process_launcher/ChildProcessConnection;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/ChildProcessRanking$ReverseRankIterator;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ChildProcessRanking$ReverseRankIterator;-><init>(Lorg/chromium/content/browser/ChildProcessRanking;)V

    return-object v0
.end method

.method public removeConnection(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ChildProcessRanking;->indexOf(Lorg/chromium/base/process_launcher/ChildProcessConnection;)I

    move-result p1

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-boolean p1, Lorg/chromium/content/browser/ChildProcessRanking;->ENABLE_CHECKS:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessRanking;->checkOrder()V

    :cond_0
    return-void
.end method

.method public updateConnection(Lorg/chromium/base/process_launcher/ChildProcessConnection;ZJZI)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ChildProcessRanking;->indexOf(Lorg/chromium/base/process_launcher/ChildProcessConnection;)I

    move-result p1

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessRanking;->mRankings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;

    iput-boolean p2, v0, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->visible:Z

    iput-wide p3, v0, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->frameDepth:J

    iput-boolean p5, v0, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->intersectsViewport:Z

    iput p6, v0, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->importance:I

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ChildProcessRanking;->reposition(I)V

    return-void
.end method
