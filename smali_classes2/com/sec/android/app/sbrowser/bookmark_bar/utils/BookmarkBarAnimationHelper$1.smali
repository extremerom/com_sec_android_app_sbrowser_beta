.class Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->showMovingAnimation([ZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper$1;->val$targetView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper$1;->val$targetView:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
