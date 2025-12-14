.class public interface abstract Lorg/chromium/blink/mojom/SiTranslationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SiTranslationManager$GetAvailableLanguages_Response;,
        Lorg/chromium/blink/mojom/SiTranslationManager$CreateTranslator_Response;,
        Lorg/chromium/blink/mojom/SiTranslationManager$Proxy;
    }
.end annotation


# virtual methods
.method public abstract createTranslator(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/SiTranslationManager$CreateTranslator_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/SiTranslator;",
            ">;",
            "Lorg/chromium/blink/mojom/SiTranslationManager$CreateTranslator_Response;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getAvailableLanguages(ZLorg/chromium/blink/mojom/SiTranslationManager$GetAvailableLanguages_Response;)V
.end method
