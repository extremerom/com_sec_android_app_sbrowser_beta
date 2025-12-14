.class public interface abstract Lorg/chromium/blink/mojom/TranslationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/TranslationManager$TranslationAvailable_Response;,
        Lorg/chromium/blink/mojom/TranslationManager$CanCreateTranslator_Response;,
        Lorg/chromium/blink/mojom/TranslationManager$Proxy;
    }
.end annotation


# virtual methods
.method public abstract canCreateTranslator(Lorg/chromium/blink/mojom/TranslatorLanguageCode;Lorg/chromium/blink/mojom/TranslatorLanguageCode;Lorg/chromium/blink/mojom/TranslationManager$CanCreateTranslator_Response;)V
.end method

.method public abstract createTranslator(Lorg/chromium/blink/mojom/TranslationManagerCreateTranslatorClient;Lorg/chromium/blink/mojom/TranslatorCreateOptions;)V
.end method

.method public abstract translationAvailable(Lorg/chromium/blink/mojom/TranslatorLanguageCode;Lorg/chromium/blink/mojom/TranslatorLanguageCode;Lorg/chromium/blink/mojom/TranslationManager$TranslationAvailable_Response;)V
.end method
