.class public Lcom/sec/android/app/sbrowser/searchengine/SearchEngineTabletUI;
.super Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->init(Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;Landroid/view/View;)V

    return-void
.end method

.method public showPopup(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->showPopup(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updatePopupView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->updatePopupView()V

    return-void
.end method
