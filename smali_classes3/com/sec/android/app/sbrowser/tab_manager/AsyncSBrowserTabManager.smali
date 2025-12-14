.class public Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAsyncTabs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
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

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;->mAsyncTabs:Landroid/util/SparseArray;

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_manager/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-class v1, Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;

    return-object v0
.end method


# virtual methods
.method public add(ILcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;->mAsyncTabs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public remove(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;->mAsyncTabs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;->mAsyncTabs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-object v0
.end method
