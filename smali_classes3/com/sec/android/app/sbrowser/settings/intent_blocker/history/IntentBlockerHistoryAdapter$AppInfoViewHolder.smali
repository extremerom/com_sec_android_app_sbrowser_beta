.class Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;
.super Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$BaseItemViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfoViewHolder"
.end annotation


# instance fields
.field private final mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;

.field private final mDescViewFirst:Landroid/widget/TextView;

.field private final mDescViewSecond:Landroid/widget/TextView;

.field private final mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$BaseItemViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;

    const p2, 0x7f0b0625

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;->mImageView:Landroid/widget/ImageView;

    const p2, 0x7f0b0627

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;->mDescViewFirst:Landroid/widget/TextView;

    const p2, 0x7f0b0628

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;->mDescViewSecond:Landroid/widget/TextView;

    const p2, 0x7f0b0626

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/a;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;->access$000(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;I)Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$Listener;->onItemClick(Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public setBlockedCount(I)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f12002f

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;->mDescViewSecond:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTotalCount(I)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f12002e

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f12002d

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$AppInfoViewHolder;->mDescViewFirst:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
