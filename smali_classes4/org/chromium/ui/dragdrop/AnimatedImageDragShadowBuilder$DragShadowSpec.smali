.class Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragShadowSpec"
.end annotation


# instance fields
.field public final startHeight:I

.field public final startWidth:I

.field public final targetHeight:I

.field public final targetWidth:I

.field public final truncatedHeight:I

.field public final truncatedWidth:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->startWidth:I

    iput p2, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->startHeight:I

    iput p3, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->targetWidth:I

    iput p4, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->targetHeight:I

    iput p5, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->truncatedWidth:I

    iput p6, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->truncatedHeight:I

    return-void
.end method
