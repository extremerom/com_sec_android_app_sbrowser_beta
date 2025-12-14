.class Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$12;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->handleDeleteAllKeywordList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$12;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$12;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$12;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->a(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->deleteAllSearchKeywordList()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$12;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->d(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$12;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$12;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->f(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method
