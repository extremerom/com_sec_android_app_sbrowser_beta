.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->a(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->a(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$Listener;->onClickDeleteAllSearchKeyword()V

    :cond_0
    return-void
.end method
