.class public interface abstract Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$BookmarkAdapterDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BookmarkAdapterDelegate"
.end annotation


# virtual methods
.method public abstract getScreenID()Ljava/lang/String;
.end method

.method public abstract getSelectedObjects()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onCancelButtonClicked()V
.end method

.method public abstract onSelectAll(Z)V
.end method

.method public abstract refreshActionBar()V
.end method

.method public abstract setTitle()V
.end method
