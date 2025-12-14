.class public final Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter$ViewHolderWhiteCase;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolderWhiteCase"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter$ViewHolderWhiteCase;",
        "Landroidx/recyclerview/widget/h1;",
        "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;",
        "appBarModuleView",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;)V",
        "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;",
        "getAppBarModuleView",
        "()Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;",
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
.field private final appBarModuleView:Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;",
            ")V"
        }
    .end annotation

    const-string v0, "appBarModuleView"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter$ViewHolderWhiteCase;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter$ViewHolderWhiteCase;->appBarModuleView:Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;

    return-void
.end method


# virtual methods
.method public final getAppBarModuleView()Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/ModuleViewPagerAdapter$ViewHolderWhiteCase;->appBarModuleView:Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;

    return-object p0
.end method
