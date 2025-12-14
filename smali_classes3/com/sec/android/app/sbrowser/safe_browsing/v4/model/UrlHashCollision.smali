.class public final Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;",
        "",
        "prefixHash",
        "",
        "fullHash",
        "threatListDescriptor",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;)V",
        "getPrefixHash",
        "()Ljava/lang/String;",
        "getFullHash",
        "getThreatListDescriptor",
        "()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private final fullHash:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final prefixHash:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final threatListDescriptor:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "prefixHash"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullHash"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threatListDescriptor"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->prefixHash:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->fullHash:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->threatListDescriptor:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.sec.android.app.sbrowser.safe_browsing.v4.model.UrlHashCollision"

    invoke-static {p1, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->prefixHash:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->prefixHash:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->fullHash:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->fullHash:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->threatListDescriptor:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->threatListDescriptor:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFullHash()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->fullHash:Ljava/lang/String;

    return-object p0
.end method

.method public final getPrefixHash()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->prefixHash:Ljava/lang/String;

    return-object p0
.end method

.method public final getThreatListDescriptor()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->threatListDescriptor:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->prefixHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->fullHash:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->threatListDescriptor:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
