.class interface abstract Lorg/chromium/content/browser/input/TextSuggestionHost$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/TextSuggestionHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract applySpellCheckSuggestion(JLorg/chromium/content/browser/input/TextSuggestionHost;Ljava/lang/String;)V
.end method

.method public abstract applyTextSuggestion(JLorg/chromium/content/browser/input/TextSuggestionHost;II)V
.end method

.method public abstract deleteActiveSuggestionRange(JLorg/chromium/content/browser/input/TextSuggestionHost;)V
.end method

.method public abstract onNewWordAddedToDictionary(JLorg/chromium/content/browser/input/TextSuggestionHost;Ljava/lang/String;)V
.end method

.method public abstract onSuggestionMenuClosed(JLorg/chromium/content/browser/input/TextSuggestionHost;)V
.end method
