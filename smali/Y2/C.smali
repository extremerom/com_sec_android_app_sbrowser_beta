.class public final LY2/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/d0;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY2/C;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onTransitionCancel(LY2/f0;)V
    .locals 0

    return-void
.end method

.method public final onTransitionEnd(LY2/f0;)V
    .locals 0

    iget-object p0, p0, LY2/C;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final onTransitionPause(LY2/f0;)V
    .locals 0

    return-void
.end method

.method public final onTransitionResume(LY2/f0;)V
    .locals 0

    return-void
.end method

.method public final onTransitionStart(LY2/f0;)V
    .locals 0

    return-void
.end method
