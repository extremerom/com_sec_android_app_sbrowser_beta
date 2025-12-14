.class Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaDrm$OnExpirationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaDrmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpirationUpdateListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;


# direct methods
.method private constructor <init>(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/media/MediaDrmBridge;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;-><init>(Lorg/chromium/media/MediaDrmBridge;)V

    return-void
.end method


# virtual methods
.method public onExpirationUpdate(Landroid/media/MediaDrm;[BJ)V
    .locals 8

    iget-object p1, p0, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {p1, p2}, Lorg/chromium/media/MediaDrmBridge;->f(Lorg/chromium/media/MediaDrmBridge;[B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object p1

    iget-object v6, p0, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    new-instance v7, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener$1;-><init>(Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;Lorg/chromium/media/MediaDrmSessionManager$SessionId;[BJ)V

    invoke-static {v6, p1, v7}, Lorg/chromium/media/MediaDrmBridge;->c(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;Ljava/lang/Runnable;)V

    return-void
.end method
