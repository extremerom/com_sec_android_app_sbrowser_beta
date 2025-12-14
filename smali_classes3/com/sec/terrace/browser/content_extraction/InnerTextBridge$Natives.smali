.class public interface abstract Lcom/sec/terrace/browser/content_extraction/InnerTextBridge$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/content_extraction/InnerTextBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract getInnerText(Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/content_public/browser/RenderFrameHost;",
            "Lorg/chromium/base/Callback<",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method
