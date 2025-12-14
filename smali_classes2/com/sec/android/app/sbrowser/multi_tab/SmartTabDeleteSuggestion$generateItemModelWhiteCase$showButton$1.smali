.class public final Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$generateItemModelWhiteCase$showButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->generateItemModelWhiteCase(Ljava/lang/String;ILcom/google/android/material/appbar/model/ButtonStyle;I)Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u000e\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u0004H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "com/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$generateItemModelWhiteCase$showButton$1",
        "Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;",
        "Landroid/view/View;",
        "view",
        "Lcom/google/android/material/appbar/model/AppBarModel;",
        "Ld6/a;",
        "module",
        "Ldb/r;",
        "onClick",
        "(Landroid/view/View;Lcom/google/android/material/appbar/model/AppBarModel;)V",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $tabCount:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$generateItemModelWhiteCase$showButton$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$generateItemModelWhiteCase$showButton$1;->$tabCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/google/android/material/appbar/model/AppBarModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/google/android/material/appbar/model/AppBarModel<",
            "+",
            "Ld6/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "module"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "SmartTabDeleteSuggestion"

    const-string p2, "[onClick] launch smart tab delete"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$generateItemModelWhiteCase$showButton$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->access$getSharedPreferences$p(Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "tab_delete_suggestion_closed_count"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$generateItemModelWhiteCase$showButton$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->access$getSuggestionListener$p(Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;)Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$generateItemModelWhiteCase$showButton$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->access$getUnimportantSet$p(Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;->onShowButtonClicked(Ljava/util/HashSet;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$generateItemModelWhiteCase$showButton$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->getCollapsingToolbar()Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c(Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$generateItemModelWhiteCase$showButton$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->getCollapsingToolbar()Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$generateItemModelWhiteCase$showButton$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$generateItemModelWhiteCase$showButton$1;->$tabCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f12005a

    invoke-virtual {p2, v1, p0, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->sendSALoggingForClickTipCard()V

    return-void

    :cond_0
    const-string p0, "unimportantSet"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string p0, "suggestionListener"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2
.end method
