.class Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$14;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$14;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->a(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$14;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->d(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->deleteSearchKeywordItem(Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordItem;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$14;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->j(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$14;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->f(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$14;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->d(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;->setDisplayList(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$14;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->f(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$14;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->d(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$14;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->g(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$14;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->c(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
