.class public Lcom/sec/terrace/TerraceRequestPageContextCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/webcontents/WebContentsImpl$RequestContextCallback;


# instance fields
.field private final mCallback:Lorg/chromium/content/browser/webcontents/WebContentsImpl$RequestContextCallback;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/webcontents/WebContentsImpl$RequestContextCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/TerraceRequestPageContextCallback;->mCallback:Lorg/chromium/content/browser/webcontents/WebContentsImpl$RequestContextCallback;

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceRequestPageContextCallback;->mCallback:Lorg/chromium/content/browser/webcontents/WebContentsImpl$RequestContextCallback;

    invoke-interface {p0, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$RequestContextCallback;->run(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
