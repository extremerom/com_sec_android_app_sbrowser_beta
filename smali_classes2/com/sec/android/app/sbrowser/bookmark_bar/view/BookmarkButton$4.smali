.class Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$4;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x13

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$4;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->b(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;->onFocusOutTop()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
