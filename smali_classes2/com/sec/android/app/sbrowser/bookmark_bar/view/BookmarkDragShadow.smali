.class public Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkDragShadow;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field mShadowView:Landroid/view/View;

.field mTitleTextView:Landroid/widget/TextView;

.field mUrlTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e0054

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkDragShadow;->mShadowView:Landroid/view/View;

    const v0, 0x7f0b0b42

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkDragShadow;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkDragShadow;->mShadowView:Landroid/view/View;

    const p2, 0x7f0b0b43

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkDragShadow;->mUrlTextView:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkDragShadow;->mUrlTextView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkDragShadow;->mUrlTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public toDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkDragShadow;->mShadowView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkDragShadow;->mShadowView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkDragShadow;->mShadowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkDragShadow;->mShadowView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkDragShadow;->mShadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkDragShadow;->mShadowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v4, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkDragShadow;->mShadowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkDragShadow;->mShadowView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_2
    :goto_0
    return-object v3
.end method
