.class public interface abstract Lorg/chromium/blink/mojom/FontUniqueNameLookup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FontUniqueNameLookup$GetUniqueNameLookupTable_Response;,
        Lorg/chromium/blink/mojom/FontUniqueNameLookup$GetUniqueNameLookupTableIfAvailable_Response;,
        Lorg/chromium/blink/mojom/FontUniqueNameLookup$Proxy;
    }
.end annotation


# virtual methods
.method public abstract getUniqueNameLookupTable(Lorg/chromium/blink/mojom/FontUniqueNameLookup$GetUniqueNameLookupTable_Response;)V
.end method

.method public abstract getUniqueNameLookupTableIfAvailable(Lorg/chromium/blink/mojom/FontUniqueNameLookup$GetUniqueNameLookupTableIfAvailable_Response;)V
.end method
