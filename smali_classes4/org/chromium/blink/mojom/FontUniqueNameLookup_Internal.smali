.class Lorg/chromium/blink/mojom/FontUniqueNameLookup_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FontUniqueNameLookup_Internal$FontUniqueNameLookupGetUniqueNameLookupTableResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FontUniqueNameLookup_Internal$FontUniqueNameLookupGetUniqueNameLookupTableResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FontUniqueNameLookup_Internal$FontUniqueNameLookupGetUniqueNameLookupTableResponseParams;,
        Lorg/chromium/blink/mojom/FontUniqueNameLookup_Internal$FontUniqueNameLookupGetUniqueNameLookupTableParams;,
        Lorg/chromium/blink/mojom/FontUniqueNameLookup_Internal$FontUniqueNameLookupGetUniqueNameLookupTableIfAvailableResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FontUniqueNameLookup_Internal$FontUniqueNameLookupGetUniqueNameLookupTableIfAvailableResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FontUniqueNameLookup_Internal$FontUniqueNameLookupGetUniqueNameLookupTableIfAvailableResponseParams;,
        Lorg/chromium/blink/mojom/FontUniqueNameLookup_Internal$FontUniqueNameLookupGetUniqueNameLookupTableIfAvailableParams;,
        Lorg/chromium/blink/mojom/FontUniqueNameLookup_Internal$Stub;,
        Lorg/chromium/blink/mojom/FontUniqueNameLookup_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/FontUniqueNameLookup;",
            "Lorg/chromium/blink/mojom/FontUniqueNameLookup$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/FontUniqueNameLookup_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FontUniqueNameLookup_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/FontUniqueNameLookup_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
