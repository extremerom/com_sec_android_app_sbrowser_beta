.class public Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;,
        Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$SavedPageMessageObserver;
    }
.end annotation


# instance fields
.field private mSavedPageMessageObserver:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$SavedPageMessageObserver;",
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

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->mSavedPageMessageObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/o;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/o;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    return-object v0
.end method


# virtual methods
.method public addObserver(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$SavedPageMessageObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->mSavedPageMessageObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->mSavedPageMessageObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;->getMessages(I)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Message received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SavedPageMessageHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->mSavedPageMessageObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$SavedPageMessageObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$SavedPageMessageObserver;->onChange(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$SavedPageMessageObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->mSavedPageMessageObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->mSavedPageMessageObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public sendMessage(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
