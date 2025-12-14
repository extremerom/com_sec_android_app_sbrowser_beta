.class public Lcom/sec/terrace/browser/TerraceUrlUtilitiesJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/TerraceUrlUtilitiesJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/TerraceUrlUtilitiesJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public fixupUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->Me6MWriB(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDomainAndRegistry(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MqWIBdTy(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isGoogleSearchUrl(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->Mzfulpqr(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isOriginLocalhostOrFile(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->M2LkAoWA(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isOriginSecure(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MTiAY5T5(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSchemeCryptographic(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->M5CmA07y(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isTopDomain(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MTIUw0io(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isUrlWithinScope(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MVSauOXy(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public sameDomainOrHost(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mxb62qcu(Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result p0

    return p0
.end method

.method public urlsMatchIgnoringFragments(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M_4ddYTr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
