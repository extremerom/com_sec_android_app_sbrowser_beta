.class public interface abstract Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract finishActivityWithResult(I)V
.end method

.method public abstract getGlobalSyncInternetStatus(Landroid/content/Context;)Z
.end method

.method public abstract getGroupDetails(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAccountSignUp(Landroid/content/Context;)Z
.end method

.method public abstract triggerTabSyncManually()V
.end method
