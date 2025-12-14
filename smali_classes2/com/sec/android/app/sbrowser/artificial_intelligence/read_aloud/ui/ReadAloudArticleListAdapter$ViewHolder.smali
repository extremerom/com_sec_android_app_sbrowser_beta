.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private final mIndexIcon:Landroid/widget/TextView;

.field private final mParentView:Landroid/view/View;

.field private final mPlayIcon:Landroid/widget/ImageView;

.field private final mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->mParentView:Landroid/view/View;

    const v0, 0x7f0b0986

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0b0987

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->mIndexIcon:Landroid/widget/TextView;

    const v0, 0x7f0b0988

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->mPlayIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->mIndexIcon:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->mParentView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->mPlayIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method
