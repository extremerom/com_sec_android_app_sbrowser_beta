.class public final Lorg/chromium/content_public/browser/ClientDataJson;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public static buildClientDataJson(ILjava/lang/String;[BZLorg/chromium/blink/mojom/PaymentOptions;Ljava/lang/String;Lorg/chromium/url/Origin;)Ljava/lang/String;
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/chromium/content/browser/ClientDataJsonImpl;->buildClientDataJson(ILjava/lang/String;[BZLorg/chromium/blink/mojom/PaymentOptions;Ljava/lang/String;Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
