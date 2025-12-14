.class public Lorg/chromium/components/search_engines/TemplateUrlJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/search_engines/TemplateUrl$Natives;


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

.method public static get()Lorg/chromium/components/search_engines/TemplateUrl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/search_engines/TemplateUrlJni;

    invoke-direct {v0}, Lorg/chromium/components/search_engines/TemplateUrlJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getKeyword(J)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M74Ymq6T(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getShortName(J)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M35ewi23(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isPrepopulatedOrDefaultProviderByPolicy(J)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MTRkxCsQ(J)Z

    move-result p0

    return p0
.end method
