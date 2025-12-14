.class public final Lcom/sec/android/app/sbrowser/search_widget/SearchBar$initializeSearchEngine$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->initializeSearchEngine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "com/sec/android/app/sbrowser/search_widget/SearchBar$initializeSearchEngine$2$1",
        "Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;",
        "",
        "title",
        "Ldb/r;",
        "onItemSelected",
        "(Ljava/lang/String;)V",
        "onSearchEnginePreferenceChanged",
        "onUpdateSearchEngineButtonIcon",
        "onShow",
        "()V",
        "onHide",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_run:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$initializeSearchEngine$2$1;->$this_run:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHide()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$initializeSearchEngine$2$1;->$this_run:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->showKeyboardIfRequired()V

    return-void
.end method

.method public onItemSelected(Ljava/lang/String;)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SearchBar"

    const-string v1, "[initSearchEngine] : onItemSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$initializeSearchEngine$2$1;->$this_run:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->access$setCurrentSearchEngine$p(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$initializeSearchEngine$2$1;->$this_run:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->showKeyboardIfRequired()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$initializeSearchEngine$2$1;->$this_run:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->access$getSearchWindowViewModel(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->onSearchEngineChanged()V

    const-string p0, "750"

    const-string p1, "7512"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSearchEnginePreferenceChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$initializeSearchEngine$2$1;->$this_run:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->access$setSearchEngineButtonImage(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$initializeSearchEngine$2$1;->$this_run:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->access$setSearchEngineDescription(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$initializeSearchEngine$2$1;->$this_run:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->access$dismissSearchEngineListPopup(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)V

    return-void
.end method

.method public onShow()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$initializeSearchEngine$2$1;->$this_run:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->access$hideKeyboard(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)V

    return-void
.end method

.method public onUpdateSearchEngineButtonIcon(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$initializeSearchEngine$2$1;->$this_run:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->access$setSearchEngineButtonImage(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$initializeSearchEngine$2$1;->$this_run:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->access$setSearchEngineDescription(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method
