.class Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->initSearchEnginePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton$1;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHide()V
    .locals 2

    const-string v0, "SearchEngineButton"

    const-string v1, "onHide Search engine popup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton$1;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->updateSearchEngine(Ljava/lang/String;)V

    return-void
.end method

.method public onItemSelected(Ljava/lang/String;)V
    .locals 0

    const-string p0, "SearchEngineButton"

    const-string p1, "onItemSelected"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSearchEnginePreferenceChanged(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SearchEngineButton"

    const-string v1, "onSearchEnginePreferenceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton$1;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->e(Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton$1;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->c(Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton$1;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->d(Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1

    const-string p0, "SearchEngineButton"

    const-string v0, "onShow Search engine popup"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpdateSearchEngineButtonIcon(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SearchEngineButton"

    const-string v1, "onUpdateSearchEngineButtonIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton$1;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->e(Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton$1;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->c(Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton$1;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->d(Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
