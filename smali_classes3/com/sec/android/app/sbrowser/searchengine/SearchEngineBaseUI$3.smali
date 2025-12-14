.class Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$3;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI$3;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineBaseUI;->mController:Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;

    invoke-interface {p0, p3}, Lcom/sec/android/app/sbrowser/searchengine/ISearchEngineController;->onSelected(I)V

    return-void
.end method
