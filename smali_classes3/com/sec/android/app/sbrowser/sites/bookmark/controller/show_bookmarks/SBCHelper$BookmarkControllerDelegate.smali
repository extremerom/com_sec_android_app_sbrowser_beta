.class interface abstract Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BookmarkControllerDelegate"
.end annotation


# virtual methods
.method public abstract getChildrenList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFolderNavigation()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getLock()Ljava/lang/Object;
.end method

.method public abstract getSharedPreference()Landroid/content/SharedPreferences;
.end method

.method public abstract isFolderItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z
.end method

.method public abstract onFolderItemSelected(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
.end method

.method public abstract setIntentLaunched(Z)V
.end method

.method public abstract updateChildren()V
.end method
