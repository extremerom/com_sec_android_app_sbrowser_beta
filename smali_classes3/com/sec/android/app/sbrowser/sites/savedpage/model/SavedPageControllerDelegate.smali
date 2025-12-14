.class public interface abstract Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clearSavedPageDeleteList()V
.end method

.method public abstract createSavedPageItemList(Landroid/content/Context;)V
.end method

.method public abstract executeSavedPageDeleteTask(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V
.end method

.method public abstract getContextMenuDelegate()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;
.end method

.method public abstract getSavedPageDeleteList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSavedPageItemList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSavedPageUri(Landroid/content/Context;)Landroid/net/Uri;
.end method

.method public abstract getShowUnsyncedIcon()Z
.end method

.method public abstract isItemsEmpty()Z
.end method

.method public abstract isSavedPageDeleteRunning()Z
.end method

.method public abstract setSavedPageDeleteRunning(Z)V
.end method

.method public abstract share()V
.end method

.method public abstract updateShowUnsyncedIcon()V
.end method
