.class public interface abstract Lorg/chromium/blink/mojom/AiManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/AiManager$CanCreateRewriter_Response;,
        Lorg/chromium/blink/mojom/AiManager$CanCreateWriter_Response;,
        Lorg/chromium/blink/mojom/AiManager$GetLanguageModelParams_Response;,
        Lorg/chromium/blink/mojom/AiManager$CanCreateSummarizer_Response;,
        Lorg/chromium/blink/mojom/AiManager$CanCreateLanguageModel_Response;,
        Lorg/chromium/blink/mojom/AiManager$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addModelDownloadProgressObserver(Lorg/chromium/blink/mojom/ModelDownloadProgressObserver;)V
.end method

.method public abstract canCreateLanguageModel(Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;Lorg/chromium/blink/mojom/AiManager$CanCreateLanguageModel_Response;)V
.end method

.method public abstract canCreateRewriter(Lorg/chromium/blink/mojom/AiRewriterCreateOptions;Lorg/chromium/blink/mojom/AiManager$CanCreateRewriter_Response;)V
.end method

.method public abstract canCreateSummarizer(Lorg/chromium/blink/mojom/AiSummarizerCreateOptions;Lorg/chromium/blink/mojom/AiManager$CanCreateSummarizer_Response;)V
.end method

.method public abstract canCreateWriter(Lorg/chromium/blink/mojom/AiWriterCreateOptions;Lorg/chromium/blink/mojom/AiManager$CanCreateWriter_Response;)V
.end method

.method public abstract createLanguageModel(Lorg/chromium/blink/mojom/AiManagerCreateLanguageModelClient;Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;)V
.end method

.method public abstract createRewriter(Lorg/chromium/blink/mojom/AiManagerCreateRewriterClient;Lorg/chromium/blink/mojom/AiRewriterCreateOptions;)V
.end method

.method public abstract createSummarizer(Lorg/chromium/blink/mojom/AiManagerCreateSummarizerClient;Lorg/chromium/blink/mojom/AiSummarizerCreateOptions;)V
.end method

.method public abstract createWriter(Lorg/chromium/blink/mojom/AiManagerCreateWriterClient;Lorg/chromium/blink/mojom/AiWriterCreateOptions;)V
.end method

.method public abstract getLanguageModelParams(Lorg/chromium/blink/mojom/AiManager$GetLanguageModelParams_Response;)V
.end method
