.class Lorg/chromium/content/browser/ChildProcessRanking$ReverseRankIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ChildProcessRanking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReverseRankIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/chromium/base/process_launcher/ChildProcessConnection;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNextIndex:I

.field private final mSizeOnConstruction:I

.field final synthetic this$0:Lorg/chromium/content/browser/ChildProcessRanking;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ChildProcessRanking;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessRanking$ReverseRankIterator;->this$0:Lorg/chromium/content/browser/ChildProcessRanking;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessRanking;->i(Lorg/chromium/content/browser/ChildProcessRanking;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lorg/chromium/content/browser/ChildProcessRanking$ReverseRankIterator;->mSizeOnConstruction:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/chromium/content/browser/ChildProcessRanking$ReverseRankIterator;->mNextIndex:I

    return-void
.end method

.method private modificationCheck()V
    .locals 0

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessRanking$ReverseRankIterator;->modificationCheck()V

    iget p0, p0, Lorg/chromium/content/browser/ChildProcessRanking$ReverseRankIterator;->mNextIndex:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ChildProcessRanking$ReverseRankIterator;->next()Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object p0

    return-object p0
.end method

.method public next()Lorg/chromium/base/process_launcher/ChildProcessConnection;
    .locals 3

    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessRanking$ReverseRankIterator;->modificationCheck()V

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessRanking$ReverseRankIterator;->this$0:Lorg/chromium/content/browser/ChildProcessRanking;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessRanking;->i(Lorg/chromium/content/browser/ChildProcessRanking;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/chromium/content/browser/ChildProcessRanking$ReverseRankIterator;->mNextIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/chromium/content/browser/ChildProcessRanking$ReverseRankIterator;->mNextIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;

    iget-object p0, p0, Lorg/chromium/content/browser/ChildProcessRanking$ConnectionWithRank;->connection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    return-object p0
.end method
