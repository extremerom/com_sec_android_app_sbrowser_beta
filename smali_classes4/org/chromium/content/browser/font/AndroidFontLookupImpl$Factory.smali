.class public Lorg/chromium/content/browser/font/AndroidFontLookupImpl$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/services/service_manager/InterfaceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/font/AndroidFontLookupImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/services/service_manager/InterfaceFactory<",
        "Lorg/chromium/blink/mojom/AndroidFontLookup;",
        ">;"
    }
.end annotation


# static fields
.field private static sImpl:Lorg/chromium/content/browser/font/AndroidFontLookupImpl;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createImpl()Lorg/chromium/blink/mojom/AndroidFontLookup;
    .locals 2

    sget-object p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl$Factory;->sImpl:Lorg/chromium/content/browser/font/AndroidFontLookupImpl;

    if-nez p0, :cond_0

    new-instance p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;-><init>(Landroid/content/Context;I)V

    sput-object p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl$Factory;->sImpl:Lorg/chromium/content/browser/font/AndroidFontLookupImpl;

    :cond_0
    sget-object p0, Lorg/chromium/content/browser/font/AndroidFontLookupImpl$Factory;->sImpl:Lorg/chromium/content/browser/font/AndroidFontLookupImpl;

    return-object p0
.end method

.method public bridge synthetic createImpl()Lorg/chromium/mojo/bindings/Interface;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl$Factory;->createImpl()Lorg/chromium/blink/mojom/AndroidFontLookup;

    move-result-object p0

    return-object p0
.end method
