.class public Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;
.super Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field private mAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

.field mCheckBox:Landroid/widget/CheckBox;

.field mDimmedView:Landroid/view/View;

.field mDividerView:Landroid/view/View;

.field mDominantText:Landroid/widget/TextView;

.field mLayout:Landroid/widget/LinearLayout;

.field mRowView:Landroid/view/View;

.field mSavedPageDescription:Landroid/widget/TextView;

.field mSavedPageImage:Landroid/widget/ImageView;

.field mSavedPageTitle:Landroid/widget/TextView;

.field mSavedPageUrl:Landroid/widget/TextView;

.field mUnSyncIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    const p2, 0x7f0b0b66

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const p2, 0x7f0b0a5f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0b0a5d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageImage:Landroid/widget/ImageView;

    const p2, 0x7f0b0a55

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mDimmedView:Landroid/view/View;

    const p2, 0x7f0b0a56

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mDominantText:Landroid/widget/TextView;

    const p2, 0x7f0b0a61

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageTitle:Landroid/widget/TextView;

    const p2, 0x7f0b0a62

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageUrl:Landroid/widget/TextView;

    const p2, 0x7f0b0a5c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mSavedPageDescription:Landroid/widget/TextView;

    const p2, 0x7f0b0de9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mUnSyncIcon:Landroid/widget/ImageView;

    const p2, 0x7f0b0a5b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mDividerView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v3

    const-string v0, "onClick pos "

    const-string v1, "SavedPageViewHolder"

    invoke-static {v3, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getSavedPageUi()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const-string v1, "context menu for position "

    const-string v2, "SavedPageViewHolder"

    invoke-static {v0, v1, v2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getSavedPageUi()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->createContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;I)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v3

    const/4 v0, -0x1

    const-string v1, "SavedPageViewHolder"

    if-ne v3, v0, :cond_0

    const-string p0, "onLongClick, Invalid pos, parent RV null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "onLongClick pos "

    invoke-static {v3, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getSavedPageUi()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setDividerVisible(I)V
    .locals 0

    return-void
.end method
