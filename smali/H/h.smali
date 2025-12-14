.class public final LH/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:I

.field public final d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LH/j;IILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LH/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH/h;->e:Ljava/lang/Object;

    iput p2, p0, LH/h;->b:I

    iput p3, p0, LH/h;->c:I

    iput-object p4, p0, LH/h;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LH/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH/h;->e:Ljava/lang/Object;

    iput p2, p0, LH/h;->b:I

    iput-object p3, p0, LH/h;->d:Ljava/lang/Object;

    iput p4, p0, LH/h;->c:I

    return-void
.end method

.method public constructor <init>(Ln4/n;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LH/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH/h;->e:Ljava/lang/Object;

    new-instance p1, Landroid/widget/OverScroller;

    invoke-direct {p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, LH/h;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, LH/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LH/h;->d:Ljava/lang/Object;

    check-cast v0, Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    iget-object v2, p0, LH/h;->e:Ljava/lang/Object;

    check-cast v2, Ln4/n;

    iget-object v3, v2, Ln4/n;->m:Landroid/graphics/Matrix;

    iget v4, p0, LH/h;->b:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, LH/h;->c:I

    sub-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v2}, Ln4/n;->a()V

    iput v1, p0, LH/h;->b:I

    iput v0, p0, LH/h;->c:I

    iget-object v0, v2, Ln4/n;->h:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    iget v2, p0, LH/h;->c:I

    iget-object v3, p0, LH/h;->d:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification;

    iget v4, p0, LH/h;->b:I

    iget-object p0, p0, LH/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/foreground/SystemForegroundService;

    if-lt v0, v1, :cond_2

    invoke-static {p0, v4, v3, v2}, Ln3/d;->a(Landroid/app/Service;ILandroid/app/Notification;I)V

    goto :goto_1

    :cond_2
    invoke-static {p0, v4, v3, v2}, Ln3/c;->a(Landroid/app/Service;ILandroid/app/Notification;I)V

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, LH/h;->e:Ljava/lang/Object;

    check-cast v0, LH/j;

    iget-object v0, v0, LH/j;->b:LH/c;

    iget v1, p0, LH/h;->c:I

    iget-object v2, p0, LH/h;->d:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget p0, p0, LH/h;->b:I

    invoke-virtual {v0, p0, v1, v2}, LH/c;->onActivityResized(IILandroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
