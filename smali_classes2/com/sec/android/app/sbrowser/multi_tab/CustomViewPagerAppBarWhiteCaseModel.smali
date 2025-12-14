.class public final Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;
.super Lcom/google/android/material/appbar/model/ViewPagerAppBarModel;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/appbar/model/ViewPagerAppBarModel<",
        "Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0014\u0008\u0002\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001d\u0010\u0012\u001a\u00020\u00112\u000e\u0010\u0010\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u000e\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R \u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0017R\u0016\u0010\u0018\u001a\u00020\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;",
        "Lcom/google/android/material/appbar/model/ViewPagerAppBarModel;",
        "Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;",
        "Landroid/content/Context;",
        "context",
        "",
        "Lcom/google/android/material/appbar/model/SuggestAppBarModel;",
        "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;",
        "appBarModels",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;)V",
        "moduleView",
        "init",
        "(Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;)Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;",
        "Lcom/google/android/material/appbar/model/AppBarModel;",
        "Ld6/a;",
        "appBarModel",
        "Ldb/r;",
        "removeSuggestItemView",
        "(Lcom/google/android/material/appbar/model/AppBarModel;)V",
        "",
        "getItemCount",
        "()I",
        "Ljava/util/List;",
        "appBarView",
        "Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;",
        "Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;",
        "viewPagerAdapter",
        "Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;",
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


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final appBarModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/appbar/model/SuggestAppBarModel<",
            "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private appBarView:Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;

.field private viewPagerAdapter:Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/material/appbar/model/SuggestAppBarModel<",
            "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBarModels"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ltb/x;->a:Ltb/y;

    const-class v1, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;

    invoke-virtual {v0, v1}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/material/appbar/model/ViewPagerAppBarModel;-><init>(LAb/c;Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;->appBarModels:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;ILtb/f;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lfb/v;->a:Lfb/v;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;->viewPagerAdapter:Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;->getItemCount()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "viewPagerAdapter"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic init(Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;)Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;->init(Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;)Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;)Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "moduleView"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;->appBarModels:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;->setDataModel(Ljava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;->viewPagerAdapter:Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;

    invoke-super {p0, p1}, Lcom/google/android/material/appbar/model/ViewPagerAppBarModel;->init(Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;)Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;->viewPagerAdapter:Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;->setAdapter(Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;->appBarModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->initIndicator(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;->appBarView:Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;

    return-object p1

    :cond_0
    const-string p0, "viewPagerAdapter"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic init(Ld6/a;)Ld6/a;
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;->init(Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;)Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;

    move-result-object p0

    return-object p0
.end method

.method public final removeSuggestItemView(Lcom/google/android/material/appbar/model/AppBarModel;)V
    .locals 2
    .param p1    # Lcom/google/android/material/appbar/model/AppBarModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/appbar/model/AppBarModel<",
            "+",
            "Ld6/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appBarModel"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;->viewPagerAdapter:Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;->find(Lcom/google/android/material/appbar/model/AppBarModel;)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;->appBarView:Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->removeItem(IZ)V

    return-void

    :cond_0
    const-string p0, "appBarView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "viewPagerAdapter"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method
