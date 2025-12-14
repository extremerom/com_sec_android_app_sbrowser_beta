.class Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchUi$RecentSearchKeywordItemDecoration;
.super Landroidx/recyclerview/widget/F0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentSearchKeywordItemDecoration"
.end annotation


# instance fields
.field private final mItemSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071726

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchUi$RecentSearchKeywordItemDecoration;->mItemSpace:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;)V
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchUi$RecentSearchKeywordItemDecoration;->mItemSpace:I

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
