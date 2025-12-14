.class public Lcom/sec/android/app/sbrowser/tab/AsyncTabManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAsyncTabs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/sbrowser/tab/Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/AsyncTabManager;->mAsyncTabs:Landroid/util/SparseArray;

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/tab/AsyncTabManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/o;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/o;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/tab/AsyncTabManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/AsyncTabManager;

    return-object v0
.end method


# virtual methods
.method public add(ILcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/AsyncTabManager;->mAsyncTabs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public remove(I)Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/AsyncTabManager;->mAsyncTabs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/AsyncTabManager;->mAsyncTabs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-object v0
.end method
