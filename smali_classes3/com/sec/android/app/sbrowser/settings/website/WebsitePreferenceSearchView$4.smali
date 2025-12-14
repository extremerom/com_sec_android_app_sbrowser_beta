.class Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$4;
.super Landroidx/recyclerview/widget/O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->l(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchFragment;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->m(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/O0;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
