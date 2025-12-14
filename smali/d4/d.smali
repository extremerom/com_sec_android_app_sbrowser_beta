.class public final Ld4/d;
.super Li4/b;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:I

.field public final c:J

.field public d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    invoke-direct {p0}, Li4/b;-><init>()V

    iput-object p1, p0, Ld4/d;->a:Landroid/os/Handler;

    iput p2, p0, Ld4/d;->b:I

    iput-wide p3, p0, Ld4/d;->c:J

    return-void
.end method


# virtual methods
.method public final onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Ld4/d;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final onResourceReady(Ljava/lang/Object;Lj4/c;)V
    .locals 2

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Ld4/d;->d:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    iget-object p2, p0, Ld4/d;->a:Landroid/os/Handler;

    invoke-virtual {p2, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-wide v0, p0, Ld4/d;->c:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
