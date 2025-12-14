.class public Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mPopup:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$BookmarkBarFolderListener;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup$BookmarkBarFolderListener;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->mPopup:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;

    return-void
.end method


# virtual methods
.method public dismissPopup()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->mPopup:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->mPopup:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public showPopup(JIZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->mPopup:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->mPopup:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p1, p3, p0, p4}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarFolderPopup;->show(Ljava/lang/Long;ILandroid/view/View;Z)V

    :cond_0
    return-void
.end method
