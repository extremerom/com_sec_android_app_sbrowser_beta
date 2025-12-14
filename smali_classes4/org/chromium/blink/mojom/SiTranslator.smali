.class public interface abstract Lorg/chromium/blink/mojom/SiTranslator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SiTranslator$TranslateList_Response;,
        Lorg/chromium/blink/mojom/SiTranslator$DetectLanguage_Response;,
        Lorg/chromium/blink/mojom/SiTranslator$Proxy;
    }
.end annotation


# virtual methods
.method public abstract cancelAll()V
.end method

.method public abstract detectLanguage([Ljava/lang/String;Lorg/chromium/blink/mojom/SiTranslator$DetectLanguage_Response;)V
.end method

.method public abstract translateList([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lorg/chromium/blink/mojom/SiTranslator$TranslateList_Response;)V
.end method
