.class Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->init(Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$2;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$2;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mAdapter:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$2;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mMainLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$2;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mController:Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;->onDismiss()V

    return-void
.end method
