.class public final LZ3/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ3/m;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LZ3/E;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;LQ3/k;)Z
    .locals 0

    iget p0, p0, LZ3/E;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/io/File;

    const/4 p0, 0x1

    return p0

    :pswitch_0
    check-cast p1, Landroid/graphics/drawable/Drawable;

    const/4 p0, 0x1

    return p0

    :pswitch_1
    check-cast p1, Landroid/graphics/Bitmap;

    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;IILQ3/k;)LS3/C;
    .locals 0

    iget p0, p0, LZ3/E;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/io/File;

    new-instance p0, LZ3/D;

    invoke-direct {p0, p1}, LZ3/D;-><init>(Ljava/io/File;)V

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    new-instance p0, Lb4/b;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lb4/b;-><init>(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_1
    check-cast p1, Landroid/graphics/Bitmap;

    new-instance p0, LZ3/D;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, LZ3/D;-><init>(ILjava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
