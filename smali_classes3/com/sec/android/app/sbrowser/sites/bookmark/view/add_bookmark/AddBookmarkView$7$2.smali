.class Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7$2;->this$1:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7$2;->this$1:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->h(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7$2;->this$1:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->h(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewListener;->handleSelectBookmark()V

    :cond_0
    return-void
.end method
