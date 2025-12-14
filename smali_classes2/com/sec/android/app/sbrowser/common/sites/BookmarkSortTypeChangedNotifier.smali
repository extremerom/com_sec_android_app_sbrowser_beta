.class public Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier$BookmarkSortChangedListener;
    }
.end annotation


# instance fields
.field private final mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList<",
            "Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier$BookmarkSortChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecretObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList<",
            "Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier$BookmarkSortChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;->mSecretObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;

    return-object v0
.end method


# virtual methods
.method public addObserver(Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier$BookmarkSortChangedListener;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;->mSecretObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->addObserver(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->addObserver(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public notifyObservers(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;->mSecretObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier$BookmarkSortChangedListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier$BookmarkSortChangedListener;->onSortTypeChanged()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier$BookmarkSortChangedListener;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;->mSecretObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
