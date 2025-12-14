.class Lorg/chromium/media/MediaDrmBridge$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmBridge;->onProvisioned(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$5;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "media"

    const-string v0, "Failed to initialize storage for origin"

    invoke-static {p1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge$5;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {p0}, Lorg/chromium/media/MediaDrmBridge;->o(Lorg/chromium/media/MediaDrmBridge;)V

    return-void

    :cond_0
    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge$5;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {p0}, Lorg/chromium/media/MediaDrmBridge;->b(Lorg/chromium/media/MediaDrmBridge;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmBridge$5;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method
