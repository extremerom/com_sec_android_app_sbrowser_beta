.class Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$TriggerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->onDwServiceEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;


# direct methods
.method public constructor <init>(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHandwritingIconShowing()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;

    invoke-static {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->g(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)Z

    move-result p0

    return p0
.end method

.method public updateEditableBoundsToService()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;

    invoke-static {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->h(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;

    invoke-static {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->c(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;

    invoke-static {v1}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->f(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;

    invoke-static {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->h(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/StylusWritingImeCallback;->getContainerView()Landroid/view/View;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->updateEditableBounds(Landroid/graphics/Rect;Landroid/view/View;Z)V

    return-void
.end method
