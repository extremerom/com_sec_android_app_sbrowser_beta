.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool$ViewPoolConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public mPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field

.field private mViewCreator:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool$ViewPoolConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool$ViewPoolConsumer<",
            "TV;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool;->mPool:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TV;"
        }
    .end annotation

    const-string p1, "ViewPool"

    const-string v0, "pickUpViewFromPool"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool;->mPool:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool;->mViewCreator:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool$ViewPoolConsumer;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool$ViewPoolConsumer;->createView(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool;->mPool:Ljava/util/List;

    check-cast p1, Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool;->mViewCreator:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool$ViewPoolConsumer;

    invoke-interface {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool$ViewPoolConsumer;->prepareViewToLeavePool(Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object p1
.end method

.method public returnViewToPool(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const-string v0, "ViewPool"

    const-string v1, "returnViewToPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool;->mViewCreator:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool$ViewPoolConsumer;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool$ViewPoolConsumer;->prepareViewToEnterPool(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool;->mPool:Ljava/util/List;

    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public setConsumerCallback(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool$ViewPoolConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool$ViewPoolConsumer<",
            "TV;TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool;->mViewCreator:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool$ViewPoolConsumer;

    return-void
.end method
