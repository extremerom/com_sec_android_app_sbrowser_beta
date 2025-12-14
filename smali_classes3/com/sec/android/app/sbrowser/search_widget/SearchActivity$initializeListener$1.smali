.class public final Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$initializeListener$1;
.super Landroidx/recyclerview/widget/O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->initializeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/sec/android/app/sbrowser/search_widget/SearchActivity$initializeListener$1",
        "Landroidx/recyclerview/widget/O0;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "newState",
        "Ldb/r;",
        "onScrollStateChanged",
        "(Landroidx/recyclerview/widget/RecyclerView;I)V",
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$initializeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity$initializeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->access$getBinding$p(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;)Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchActivityBinding;->searchBarBinding:Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->searchKeyword:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    goto :goto_0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
