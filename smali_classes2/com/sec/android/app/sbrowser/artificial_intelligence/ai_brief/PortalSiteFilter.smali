.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008J\u0016\u0010\n\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter;",
        "",
        "<init>",
        "()V",
        "portalSites",
        "",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite;",
        "filterUrl",
        "",
        "url",
        "filterTitle",
        "title",
        "Companion",
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
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final portalSites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter;->portalSites:Ljava/util/List;

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Companion;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Companion;->builder()Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;

    move-result-object v1

    const-string v2, "https://naver.com"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->setHome(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;

    move-result-object v1

    const-string v2, "https://m.naver.com"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->setMobileHome(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;

    move-result-object v1

    const-string v2, "https://news.naver.com"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->setNewsHome(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;

    move-result-object v1

    const-string v2, "\ub124\uc774\ubc84 \ub274\uc2a4 - \uc815\uce58, \uacbd\uc81c, \uc0ac\ud68c, \uc0dd\ud65c/\ubb38\ud654, \uc138\uacc4, IT/\uacfc\ud559 \ub4f1 \uc5b8\ub860\uc0ac\ubcc4, \ubd84\uc57c\ubcc4 \ub274\uc2a4 \uae30\uc0ac \uc81c\uacf5"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->setNewsHomeTitle(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->build()Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Companion;->builder()Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;

    move-result-object p0

    const-string v2, "https://daum.net"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->setHome(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;

    move-result-object p0

    const-string v2, "https://m.daum.net"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->setMobileHome(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;

    move-result-object p0

    const-string v2, "https://news.daum.net"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->setNewsHome(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;

    move-result-object p0

    const-string v2, "\ub2e4\uc74c\ub274\uc2a4 | \ud648"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->setNewsHomeTitle(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->build()Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite;

    move-result-object p0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final filterTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter;->portalSites:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite;->isMatched(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite;->getNewsTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2
.end method

.method public final filterUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter;->portalSites:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite;->isMatched(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite;->getNewsHome()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method
