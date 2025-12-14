.class Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReaderThemeColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->j(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)I

    move-result p0

    return p0
.end method

.method public isBookmarkBarEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->k(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)Z

    move-result p0

    return p0
.end method

.method public isDarkTheme()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->l(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHighContrastMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->f(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)Z

    move-result p0

    return p0
.end method

.method public isIncognitoMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->g(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)Z

    move-result p0

    return p0
.end method

.method public isLightTheme()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->l(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNightMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->h(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)Z

    move-result p0

    return p0
.end method
