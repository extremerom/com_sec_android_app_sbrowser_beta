.class Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView$1;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;-><init>(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;

.field final synthetic val$this$0:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;Lorg/chromium/content_public/browser/WebContents;Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView$1;->this$1:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;

    iput-object p3, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView$1;->val$this$0:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;

    invoke-direct {p0, p2}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public didToggleFullscreenModeForTab(ZZ)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView$1;->this$1:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->this$0:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->cleanupAndExit()V

    :cond_0
    return-void
.end method
