.class Lorg/chromium/content/browser/RenderWidgetHostViewImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/RenderWidgetHostViewImpl$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/content/browser/RenderWidgetHostViewImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/RenderWidgetHostViewImplJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/RenderWidgetHostViewImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public dismissTextHandles(JLorg/chromium/content/browser/RenderWidgetHostViewImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MQWja$xA(JLjava/lang/Object;)V

    return-void
.end method

.method public onViewportInsetBottomChanged(JLorg/chromium/content/browser/RenderWidgetHostViewImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Myd8R_Wn(JLjava/lang/Object;)V

    return-void
.end method

.method public showContextMenuAtTouchHandle(JLorg/chromium/content/browser/RenderWidgetHostViewImpl;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->McU85DFE(JLjava/lang/Object;II)V

    return-void
.end method
