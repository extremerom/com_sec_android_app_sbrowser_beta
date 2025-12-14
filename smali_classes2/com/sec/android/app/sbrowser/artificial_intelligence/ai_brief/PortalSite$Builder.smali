.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\t\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u0007J\u0015\u0010\r\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\r\u0010\u0007J\r\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0006\u0010\u0014R\"\u0010\u0008\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\u0011\u001a\u0004\u0008\u0015\u0010\u0013\"\u0004\u0008\t\u0010\u0014R\"\u0010\n\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0011\u001a\u0004\u0008\u0016\u0010\u0013\"\u0004\u0008\u000b\u0010\u0014R\"\u0010\u000c\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0011\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\r\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;",
        "",
        "<init>",
        "()V",
        "",
        "home",
        "setHome",
        "(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;",
        "mobileHome",
        "setMobileHome",
        "newsHome",
        "setNewsHome",
        "newsHomeTitle",
        "setNewsHomeTitle",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite;",
        "build",
        "()Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite;",
        "Ljava/lang/String;",
        "getHome",
        "()Ljava/lang/String;",
        "(Ljava/lang/String;)V",
        "getMobileHome",
        "getNewsHome",
        "getNewsHomeTitle",
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
.field private home:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mobileHome:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private newsHome:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private newsHomeTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->home:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->mobileHome:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->newsHome:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->newsHomeTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->home:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->mobileHome:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->newsHome:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->newsHomeTitle:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setHome(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "home"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->home:Ljava/lang/String;

    return-object p0
.end method

.method public final setMobileHome(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mobileHome"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->mobileHome:Ljava/lang/String;

    return-object p0
.end method

.method public final setNewsHome(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "newsHome"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->newsHome:Ljava/lang/String;

    return-object p0
.end method

.method public final setNewsHomeTitle(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "newsHomeTitle"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSite$Builder;->newsHomeTitle:Ljava/lang/String;

    return-object p0
.end method
