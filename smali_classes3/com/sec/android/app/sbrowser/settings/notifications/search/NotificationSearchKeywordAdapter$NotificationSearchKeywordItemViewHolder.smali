.class Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter$NotificationSearchKeywordItemViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationSearchKeywordItemViewHolder"
.end annotation


# instance fields
.field mDeleteButton:Landroid/widget/ImageView;

.field mMainItemLayout:Landroid/widget/LinearLayout;

.field mPosition:I

.field mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;Landroid/view/View$OnKeyListener;Landroid/view/View$OnKeyListener;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0b7f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter$NotificationSearchKeywordItemViewHolder;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0b0b7e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter$NotificationSearchKeywordItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->setKeywordMainItemClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter$NotificationSearchKeywordItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    const p3, 0x7f0b0b7b

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter$NotificationSearchKeywordItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->getSearchKeywordDeleteOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter$NotificationSearchKeywordItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportHoveringUi()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter$NotificationSearchKeywordItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    sget-object p1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->TYPE_TOOLTIP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverPopupType(Landroid/view/View;Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public requestDeleteFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter$NotificationSearchKeywordItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter$NotificationSearchKeywordItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter$NotificationSearchKeywordItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    return-void
.end method

.method public requestItemFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter$NotificationSearchKeywordItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
