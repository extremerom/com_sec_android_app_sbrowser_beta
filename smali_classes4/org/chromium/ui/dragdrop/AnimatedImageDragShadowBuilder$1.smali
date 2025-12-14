.class Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$1;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$1;->this$0:Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->b(Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$1;->get(Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$1;->setValue(Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;F)V

    return-void
.end method

.method public setValue(Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;F)V
    .locals 0

    invoke-static {p1, p2}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->c(Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;F)V

    invoke-static {p1}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->a(Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->updateDragShadow(Landroid/view/View$DragShadowBuilder;)V

    return-void
.end method
