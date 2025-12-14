.class Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->a(Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;)Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;->onChanged()V

    return-void
.end method
