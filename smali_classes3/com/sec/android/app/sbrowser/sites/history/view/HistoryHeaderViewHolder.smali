.class public Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;
.super Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder$OnClickListener;
    }
.end annotation


# instance fields
.field public mByDateCheckbox:Landroid/widget/CheckBox;

.field public mGroupHeaderIndicator:Landroid/widget/ImageView;

.field private final mOnClickListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder$OnClickListener;

.field public mRowView:Landroid/view/View;

.field public mSectionTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder$OnClickListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0d66

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;->mSectionTitle:Landroid/widget/TextView;

    const v0, 0x7f0b055d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;->mGroupHeaderIndicator:Landroid/widget/ImageView;

    const v0, 0x7f0b01fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;->mByDateCheckbox:Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;->mGroupHeaderIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;->mOnClickListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder$OnClickListener;

    return-void
.end method


# virtual methods
.method public getHeaderCheckbox()Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;->mByDateCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder;->mOnClickListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryHeaderViewHolder$OnClickListener;->onClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
