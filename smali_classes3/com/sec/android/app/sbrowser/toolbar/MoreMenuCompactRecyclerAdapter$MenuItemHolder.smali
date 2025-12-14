.class public Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuItemHolder"
.end annotation


# instance fields
.field mBadge:Landroid/view/View;

.field mBlockedCounts:Landroid/widget/TextView;

.field mContainer:Landroid/widget/RelativeLayout;

.field mDivider:Landroid/view/View;

.field mIcon:Landroid/widget/ImageView;

.field mTabCountView:Landroid/widget/TextView;

.field mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mTabCountView:Landroid/widget/TextView;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const p2, 0x7f0b0d16

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    const p2, 0x7f0b0d17

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mTabCountView:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const p2, 0x7f0b02ed

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    :goto_0
    const p2, 0x7f0b05ef

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mIcon:Landroid/widget/ImageView;

    const p2, 0x7f0b077b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mBadge:Landroid/view/View;

    const p2, 0x7f0b0167

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mBlockedCounts:Landroid/widget/TextView;

    const p2, 0x7f0b0d32

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mText:Landroid/widget/TextView;

    const p2, 0x7f0b0416

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mDivider:Landroid/view/View;

    return-void
.end method
