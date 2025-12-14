.class Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->updatePopupView()V

    return-void
.end method
