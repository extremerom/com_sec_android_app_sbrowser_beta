.class public Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarPopupMenuHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sActivityId:I

.field private static sPopupMenu:Lt/x0;


# direct methods
.method public static registerPopup(ILt/x0;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarPopupMenuHelper;->sPopupMenu:Lt/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt/x0;->dismiss()V

    :cond_0
    sput p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarPopupMenuHelper;->sActivityId:I

    sput-object p1, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarPopupMenuHelper;->sPopupMenu:Lt/x0;

    return-void
.end method

.method public static unRegisterPopup(I)V
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarPopupMenuHelper;->sActivityId:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    sput-object p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarPopupMenuHelper;->sPopupMenu:Lt/x0;

    :cond_0
    return-void
.end method
