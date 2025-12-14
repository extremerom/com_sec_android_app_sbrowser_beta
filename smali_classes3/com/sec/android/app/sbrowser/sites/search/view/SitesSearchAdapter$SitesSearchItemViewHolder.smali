.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;
.super Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SitesSearchItemViewHolder"
.end annotation


# instance fields
.field mCheckBox:Landroid/widget/CheckBox;

.field mDivider:Landroid/view/View;

.field mDomaintantText:Landroid/widget/TextView;

.field mImageView:Landroid/widget/ImageView;

.field mMainItemLayout:Landroid/widget/RelativeLayout;

.field mRowView:Landroid/view/View;

.field mSitesHeaderLayout:Landroid/widget/RelativeLayout;

.field mTitleView:Landroid/widget/TextView;

.field mUrlView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mRowView:Landroid/view/View;

    const v0, 0x7f0b0b8d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0b0b8e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mUrlView:Landroid/widget/TextView;

    const v0, 0x7f0b0b74

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mSitesHeaderLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0b84

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mMainItemLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0b66

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0b0b72

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0b041b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mDomaintantText:Landroid/widget/TextView;

    const v0, 0x7f0b0b81

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mDivider:Landroid/view/View;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mMainItemLayout:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->a(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mMainItemLayout:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->a(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mMainItemLayout:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->a(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->getOnCreateContextMenuListener()Landroid/view/View$OnCreateContextMenuListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method


# virtual methods
.method public setDividerVisible(I)V
    .locals 0

    return-void
.end method
