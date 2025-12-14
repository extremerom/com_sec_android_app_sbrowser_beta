.class Lcom/sec/terrace/browser/extensions/TinExtensionsRenderViewJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderViewJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderViewJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(JLcom/sec/terrace/browser/extensions/TinExtensionsRenderView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MzgtFqxL(JLjava/lang/Object;)V

    return-void
.end method

.method public init(Ljava/lang/Object;Lorg/chromium/ui/base/WindowAndroid;)J
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MDAlgUkQ(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public initCompositor(JLcom/sec/terrace/browser/extensions/TinExtensionsRenderView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M1JWYu29(JLjava/lang/Object;)V

    return-void
.end method

.method public onPhysicalBackingSizeChanged(JLcom/sec/terrace/browser/extensions/TinExtensionsRenderView;Lorg/chromium/content_public/browser/WebContents;II)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MRHaHpRB(JLjava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method public setCurrentWebContents(JLcom/sec/terrace/browser/extensions/TinExtensionsRenderView;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MQ3_zONy(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setSurface(JLcom/sec/terrace/browser/extensions/TinExtensionsRenderView;IILandroid/view/Surface;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MqfFDg2O(JLjava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method
