.class public Lcom/sec/android/app/sbrowser/media/history/view/MHViewFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createAppBarView(Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;-><init>(Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;)V

    return-object v0
.end method

.method public static createBottomBarView(Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;-><init>(Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;)V

    return-object v0
.end method

.method public static createListAdapter(Landroid/app/Activity;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;
    .locals 1
    .param p1    # Ljava/util/concurrent/CopyOnWriteArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;-><init>(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/sbrowser/common/function/Supplier;)V

    return-object v0
.end method

.method public static createMHListDecor(Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewListDecor;-><init>(Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;)V

    return-object v0
.end method

.method public static createMHistoryUI(Lcom/sec/android/app/sbrowser/media/history/view/IMHController;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;-><init>(Lcom/sec/android/app/sbrowser/media/history/view/IMHController;)V

    return-object v0
.end method
