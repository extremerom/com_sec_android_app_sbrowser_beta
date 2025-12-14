.class Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$4;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$4;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$4;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    :goto_0
    return-void
.end method
