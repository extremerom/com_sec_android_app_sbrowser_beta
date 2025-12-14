.class public final Lcom/bumptech/glide/manager/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/AspectRatioFrameLayout;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/manager/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/m;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/n;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/manager/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/m;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/bumptech/glide/manager/m;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/m;->c:Ljava/lang/Object;

    iget v1, p0, Lcom/bumptech/glide/manager/m;->a:I

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bumptech/glide/manager/m;->b:Z

    sget p0, Landroidx/media3/ui/AspectRatioFrameLayout;->d:I

    check-cast v0, Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    check-cast v0, Lcom/bumptech/glide/manager/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll4/l;->a()V

    iget-object v0, v0, Lcom/bumptech/glide/manager/n;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/scloud/lib/setting/e;

    iget-boolean v1, v0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    iget-boolean p0, p0, Lcom/bumptech/glide/manager/m;->b:Z

    iput-boolean p0, v0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    if-eq v1, p0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/manager/l;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/l;->a(Z)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
