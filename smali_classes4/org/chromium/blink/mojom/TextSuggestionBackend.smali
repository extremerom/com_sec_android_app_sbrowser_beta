.class public interface abstract Lorg/chromium/blink/mojom/TextSuggestionBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/TextSuggestionBackend$Proxy;
    }
.end annotation


# virtual methods
.method public abstract applySpellCheckSuggestion(Ljava/lang/String;)V
.end method

.method public abstract applyTextSuggestion(II)V
.end method

.method public abstract deleteActiveSuggestionRange()V
.end method

.method public abstract onNewWordAddedToDictionary(Ljava/lang/String;)V
.end method

.method public abstract onSuggestionMenuClosed()V
.end method

.method public abstract suggestionMenuTimeoutCallback(I)V
.end method
