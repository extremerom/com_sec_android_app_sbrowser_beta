.class Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$1;
.super Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->showSelectAllCheckBoxAnimation(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;

.field final synthetic val$animationEndCb:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$1;->val$animationEndCb:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$1;->val$animationEndCb:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkActionBar;Z)V

    return-void
.end method
