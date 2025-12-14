.class public Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlServiceJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;


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

.method public static get()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlServiceJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlServiceJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getDefaultProviderKeyword(JLcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Meltrf5n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultProviderSearchUrl(JLcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MMUt9taz(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultProviderShortName(JLcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MfrnrYYT(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUrlForSearchQuery(JLcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MTTjR21O(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUrlForVoiceSearchQuery(JLcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M9VtC6S4(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public init(Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;)J
    .locals 0

    invoke-static {p1}, LJ/N;->MvRsActW(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public isLoaded(JLcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MDPapb_C(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public load(JLcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MtkpdSf2(JLjava/lang/Object;)V

    return-void
.end method

.method public setSearchEngine(JLcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;Ljava/util/HashMap;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Mkq5krV1(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
