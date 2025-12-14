.class public interface abstract Lcom/sec/terrace/TerraceState$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/TerraceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract freeWebContentsStateBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract getContentsStateAsByteBuffer(Lorg/chromium/content_public/browser/WebContents;)Ljava/nio/ByteBuffer;
.end method

.method public abstract getDisplayTitleFromByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
.end method

.method public abstract restoreContentsFromByteBuffer(Ljava/nio/ByteBuffer;IZ)Lorg/chromium/content_public/browser/WebContents;
.end method
