.class interface abstract Lorg/chromium/content/browser/AppWebMessagePort$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/AppWebMessagePort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract closeAndDestroy(J)V
.end method

.method public abstract createPair()[Lorg/chromium/content/browser/AppWebMessagePort;
.end method

.method public abstract postMessage(JLorg/chromium/content_public/browser/MessagePayload;[Lorg/chromium/content_public/browser/MessagePort;)V
.end method

.method public abstract setShouldReceiveMessages(JZ)V
.end method
