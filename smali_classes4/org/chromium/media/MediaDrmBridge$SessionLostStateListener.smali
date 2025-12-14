.class Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaDrm$OnSessionLostStateListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaDrmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionLostStateListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;


# direct methods
.method private constructor <init>(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/media/MediaDrmBridge;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener;-><init>(Lorg/chromium/media/MediaDrmBridge;)V

    return-void
.end method


# virtual methods
.method public onSessionLostState(Landroid/media/MediaDrm;[B)V
    .locals 2

    iget-object p1, p0, Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {p1, p2}, Lorg/chromium/media/MediaDrmBridge;->f(Lorg/chromium/media/MediaDrmBridge;[B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener$1;-><init>(Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener;Lorg/chromium/media/MediaDrmSessionManager$SessionId;[B)V

    invoke-static {v0, p1, v1}, Lorg/chromium/media/MediaDrmBridge;->c(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;Ljava/lang/Runnable;)V

    return-void
.end method
