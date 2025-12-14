.class public interface abstract Lorg/chromium/blink/mojom/TextSuggestionHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/TextSuggestionHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract showSpellCheckSuggestionMenu(DDLjava/lang/String;[Lorg/chromium/blink/mojom/SpellCheckSuggestion;)V
.end method

.method public abstract showTextSuggestionMenu(DDLjava/lang/String;[Lorg/chromium/blink/mojom/TextSuggestion;)V
.end method

.method public abstract startSuggestionMenuTimer()V
.end method
