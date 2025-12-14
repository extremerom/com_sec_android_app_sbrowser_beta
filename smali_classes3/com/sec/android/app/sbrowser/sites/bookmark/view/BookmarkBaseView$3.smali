.class Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->scrollFolderPath(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    return-void
.end method
