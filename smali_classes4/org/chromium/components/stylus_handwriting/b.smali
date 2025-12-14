.class public final synthetic Lorg/chromium/components/stylus_handwriting/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/b;->a:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;

    iput-object p2, p0, Lorg/chromium/components/stylus_handwriting/b;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/b;->a:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/b;->b:Landroid/view/View;

    invoke-static {v0, p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->b(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;Landroid/view/View;)V

    return-void
.end method
