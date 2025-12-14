.class Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$2;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$2$1;->this$1:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$2$1;->this$1:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->t(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$2$1;->this$1:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$2;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->A(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$2$1;->this$1:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->s(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Landroid/widget/CheckBox;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method
