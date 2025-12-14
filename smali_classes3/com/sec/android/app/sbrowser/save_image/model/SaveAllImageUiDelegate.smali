.class public interface abstract Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getScannedImageList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectableCount()I
.end method

.method public abstract getSelectedCount()I
.end method

.method public abstract isAllItemLoaded()Z
.end method

.method public abstract isDesktopMode()Z
.end method

.method public abstract isLandscapeView()Z
.end method

.method public abstract isLongPressDragging()Z
.end method

.method public abstract updateUi()V
.end method
