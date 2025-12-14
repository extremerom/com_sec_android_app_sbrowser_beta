.class public final LZ3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ3/m;


# instance fields
.field public final synthetic a:I

.field public final b:LT3/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LZ3/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LR7/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LZ3/c;->b:LT3/a;

    return-void
.end method

.method public constructor <init>(LT3/a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LZ3/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ3/c;->b:LT3/a;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;LQ3/k;)Z
    .locals 0

    iget p0, p0, LZ3/c;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LP3/d;

    const/4 p0, 0x1

    return p0

    :pswitch_0
    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;IILQ3/k;)LS3/C;
    .locals 1

    iget v0, p0, LZ3/c;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LP3/d;

    invoke-virtual {p1}, LP3/d;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p0, p0, LZ3/c;->b:LT3/a;

    invoke-static {p0, p1}, LZ3/d;->d(LT3/a;Landroid/graphics/Bitmap;)LZ3/d;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    invoke-virtual {p0, p1, p2, p3, p4}, LZ3/c;->c(Landroid/graphics/ImageDecoder$Source;IILQ3/k;)LZ3/d;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Landroid/graphics/ImageDecoder$Source;IILQ3/k;)LZ3/d;
    .locals 3

    new-instance v0, LY3/b;

    invoke-direct {v0, p2, p3, p4}, LY3/b;-><init>(IILQ3/k;)V

    invoke-static {p1, v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p4, "BitmapImageDecoder"

    const/4 v0, 0x2

    invoke-static {p4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Decoded ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] for ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p2, LZ3/d;

    iget-object p0, p0, LZ3/c;->b:LT3/a;

    check-cast p0, LR7/a;

    invoke-direct {p2, p0, p1}, LZ3/d;-><init>(LT3/a;Landroid/graphics/Bitmap;)V

    return-object p2
.end method
