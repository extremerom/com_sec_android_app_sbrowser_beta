.class Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$2;
.super Landroidx/recyclerview/widget/O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsScrolling:Z

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->c(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;Z)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/O0;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
