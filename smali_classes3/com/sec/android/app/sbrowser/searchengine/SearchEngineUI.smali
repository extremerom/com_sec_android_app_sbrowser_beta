.class public interface abstract Lcom/sec/android/app/sbrowser/searchengine/SearchEngineUI;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract dismissPopup()V
.end method

.method public abstract getAdapter()Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;
.end method

.method public abstract init(Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;Landroid/view/View;)V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract setLaunchType(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;)V
.end method

.method public abstract showPopup(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;",
            ">;)V"
        }
    .end annotation
.end method
