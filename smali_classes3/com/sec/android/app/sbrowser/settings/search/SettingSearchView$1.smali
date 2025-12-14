.class Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsb/k;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;)Ldb/r;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->e(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->e(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;->addSearchKeywordToDB()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->a(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "det"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;->getMPrefKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "590"

    const-string v0, "5902"

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$1;->invoke(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;)Ldb/r;

    move-result-object p0

    return-object p0
.end method
