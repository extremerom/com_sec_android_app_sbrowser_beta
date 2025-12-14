.class public Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;,
        Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$SitesSearchObserver;
    }
.end annotation


# instance fields
.field private mSitesSearchObserver:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$SitesSearchObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->mSitesSearchObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;
    .locals 2

    new-instance v0, LA9/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LA9/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    return-object v0
.end method


# virtual methods
.method public addObserver(Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$SitesSearchObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->mSitesSearchObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SitesSearchHandler"

    const-string v1, "addObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->mSitesSearchObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->getMessages(I)Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SitesSearchHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->mSitesSearchObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->mSitesSearchObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$SitesSearchObserver;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v2, v0, v3}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$SitesSearchObserver;->onChange(Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$SitesSearchObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->mSitesSearchObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SitesSearchHandler"

    const-string v1, "removeObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->mSitesSearchObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
