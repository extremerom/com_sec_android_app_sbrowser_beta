.class public final Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLottieView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/help_intro/page/IHelpIntroPage;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLottieView;",
        "Lcom/sec/android/app/sbrowser/help_intro/page/IHelpIntroPage;",
        "Landroid/view/View;",
        "getPageView",
        "()Landroid/view/View;",
        "Ldb/r;",
        "onDestroy",
        "()V",
        "Lkotlin/Function0;",
        "callback",
        "Lsb/a;",
        "pageView",
        "Landroid/view/View;",
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
.field private final callback:Lsb/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pageView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final synthetic access$getCallback$p(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLottieView;)Lsb/a;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLottieView;->callback:Lsb/a;

    return-object p0
.end method


# virtual methods
.method public getPageView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLottieView;->pageView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
