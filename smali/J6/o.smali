.class public final LJ6/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/tabs/TabLayout;

.field public final b:Landroidx/viewpager2/widget/ViewPager2;

.field public final c:LHa/a;

.field public d:Landroidx/recyclerview/widget/u0;

.field public e:Z

.field public f:LJ6/n;

.field public g:LJ6/l;

.field public h:LJ6/m;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;LHa/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ6/o;->a:Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, LJ6/o;->b:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p3, p0, LJ6/o;->c:LHa/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, LJ6/o;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->q()V

    iget-object v1, p0, LJ6/o;->d:Landroidx/recyclerview/widget/u0;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->o()Lcom/google/android/material/tabs/a;

    move-result-object v4

    iget-object v5, p0, LJ6/o;->c:LHa/a;

    iget-object v6, v5, LHa/a;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v5, v5, LHa/a;->c:Ljava/lang/Object;

    check-cast v5, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;

    invoke-static {v6, v5, v4, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;->a(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;Lcom/google/android/material/tabs/a;I)V

    invoke-virtual {v0, v4, v2}, Lcom/google/android/material/tabs/TabLayout;->f(Lcom/google/android/material/tabs/a;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object p0, p0, LJ6/o;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq p0, v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->m(I)Lcom/google/android/material/tabs/a;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lcom/google/android/material/tabs/TabLayout;->r(Lcom/google/android/material/tabs/a;Z)V

    :cond_1
    return-void
.end method
