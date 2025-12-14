.class Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;
.super Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->setAncestorPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;

.field final synthetic val$currentPosition:I

.field final synthetic val$lastMoveWidth:I

.field final synthetic val$removingView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;IILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;

    iput p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;->val$currentPosition:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;->val$lastMoveWidth:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;->val$removingView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;->val$currentPosition:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonViewHolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonViewHolderList:Ljava/util/List;

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;->val$currentPosition:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$ViewHolder;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$ViewHolder;->mContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0890

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v2, 0xc544

    if-ge v1, v2, :cond_0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$ViewHolder;->mContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;->val$removingView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;->val$currentPosition:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonViewHolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonViewHolderList:Ljava/util/List;

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;->val$currentPosition:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$ViewHolder;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$ViewHolder;->mContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0890

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;->val$lastMoveWidth:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;->val$currentPosition:I

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->doScrollAnimation(II)V

    return-void
.end method
