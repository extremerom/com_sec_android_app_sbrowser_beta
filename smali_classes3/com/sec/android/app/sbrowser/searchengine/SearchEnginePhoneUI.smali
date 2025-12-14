.class public Lcom/sec/android/app/sbrowser/searchengine/SearchEnginePhoneUI;
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

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mPopup:Landroid/widget/ListPopupWindow;

    const p1, 0x800003

    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mController:Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/search_widget/SearchActivityDelegate;

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mController:Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->showPopup(Ljava/util/ArrayList;)V

    return-void
.end method
