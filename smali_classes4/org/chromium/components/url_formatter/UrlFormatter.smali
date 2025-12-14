.class public final Lorg/chromium/components/url_formatter/UrlFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/url_formatter/UrlFormatter$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public static fixupUrl(Ljava/lang/String;)Lorg/chromium/url/GURL;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/url/GURL;->emptyGURL()Lorg/chromium/url/GURL;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/chromium/url/GURL;->ensureNativeInitializedForGURL()V

    invoke-static {}, Lorg/chromium/components/url_formatter/UrlFormatterJni;->get()Lorg/chromium/components/url_formatter/UrlFormatter$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/components/url_formatter/UrlFormatter$Natives;->fixupUrl(Ljava/lang/String;)Lorg/chromium/url/GURL;

    move-result-object p0

    return-object p0
.end method

.method public static formatUrlForDisplayOmitScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/chromium/components/url_formatter/UrlFormatterJni;->get()Lorg/chromium/components/url_formatter/UrlFormatter$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/components/url_formatter/UrlFormatter$Natives;->formatUrlForDisplayOmitScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUrlForSecurityDisplay(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/chromium/components/url_formatter/UrlFormatterJni;->get()Lorg/chromium/components/url_formatter/UrlFormatter$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/components/url_formatter/UrlFormatter$Natives;->formatStringUrlForSecurityDisplay(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUrlForSecurityDisplay(Lorg/chromium/url/GURL;I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {}, Lorg/chromium/components/url_formatter/UrlFormatterJni;->get()Lorg/chromium/components/url_formatter/UrlFormatter$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/components/url_formatter/UrlFormatter$Natives;->formatUrlForSecurityDisplay(Lorg/chromium/url/GURL;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
