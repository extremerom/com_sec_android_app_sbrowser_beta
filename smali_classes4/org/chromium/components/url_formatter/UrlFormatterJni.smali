.class public Lorg/chromium/components/url_formatter/UrlFormatterJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/url_formatter/UrlFormatter$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/components/url_formatter/UrlFormatter$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/url_formatter/UrlFormatterJni;

    invoke-direct {v0}, Lorg/chromium/components/url_formatter/UrlFormatterJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public fixupUrl(Ljava/lang/String;)Lorg/chromium/url/GURL;
    .locals 0

    invoke-static {p1}, LJ/N;->Ml2KxI$W(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/url/GURL;

    return-object p0
.end method

.method public formatStringUrlForSecurityDisplay(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MR6Af3ZS(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public formatUrlForDisplayOmitScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, LJ/N;->M25QTkfm(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public formatUrlForSecurityDisplay(Lorg/chromium/url/GURL;I)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MN7bz_Mm(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
