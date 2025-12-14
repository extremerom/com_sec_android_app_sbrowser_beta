.class Lorg/chromium/content/browser/input/TextSuggestionHostJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/input/TextSuggestionHost$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/content/browser/input/TextSuggestionHost$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/input/TextSuggestionHostJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/input/TextSuggestionHostJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applySpellCheckSuggestion(JLorg/chromium/content/browser/input/TextSuggestionHost;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M7RnYR2r(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public applyTextSuggestion(JLorg/chromium/content/browser/input/TextSuggestionHost;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MIADbBhq(JLjava/lang/Object;II)V

    return-void
.end method

.method public deleteActiveSuggestionRange(JLorg/chromium/content/browser/input/TextSuggestionHost;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MCBTtv2g(JLjava/lang/Object;)V

    return-void
.end method

.method public onNewWordAddedToDictionary(JLorg/chromium/content/browser/input/TextSuggestionHost;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MpJ8AQhr(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onSuggestionMenuClosed(JLorg/chromium/content/browser/input/TextSuggestionHost;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MnvYa0QF(JLjava/lang/Object;)V

    return-void
.end method
