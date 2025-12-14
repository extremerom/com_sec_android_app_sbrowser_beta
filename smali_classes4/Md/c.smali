.class public final LMd/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le4/a;
.implements Lg1/q;
.implements Lw6/a;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, LMd/c;->a:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMd/c;->c:Ljava/lang/Object;

    const/16 p1, 0x64

    iput p1, p0, LMd/c;->b:I

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x3d5d7f6d

    iput p1, p0, LMd/c;->b:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LMd/c;->c:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LMd/c;->a:I

    iput-object p3, p0, LMd/c;->c:Ljava/lang/Object;

    iput p1, p0, LMd/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LMd/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LMd/c;->b:I

    iput-object p2, p0, LMd/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LA6/a;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, LMd/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMd/c;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, LMd/c;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LMd/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMd/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x6

    iput v0, p0, LMd/c;->a:I

    array-length v0, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz v0, :cond_1

    array-length v1, p1

    if-gt v0, v1, :cond_0

    iput-object p1, p0, LMd/c;->c:Ljava/lang/Object;

    iput v0, p0, LMd/c;->b:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "end > bytes.length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "end < start"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c()LMd/c;
    .locals 2

    new-instance v0, LMd/c;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LMd/c;-><init>(I)V

    sget-object v1, Lx7/c;->DEFAULT:Lx7/c;

    iput-object v1, v0, LMd/c;->c:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public A(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, LMd/c;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p0, p0, LMd/c;->b:I

    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public a()Lx7/a;
    .locals 2

    new-instance v0, Lx7/a;

    iget v1, p0, LMd/c;->b:I

    iget-object p0, p0, LMd/c;->c:Ljava/lang/Object;

    check-cast p0, Lx7/c;

    invoke-direct {v0, v1, p0}, Lx7/a;-><init>(ILx7/c;)V

    return-object v0
.end method

.method public b(LS3/C;LQ3/k;)LS3/C;
    .locals 2

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1}, LS3/C;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, LMd/c;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap$CompressFormat;

    iget p0, p0, LMd/c;->b:I

    invoke-virtual {v0, v1, p0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-interface {p1}, LS3/C;->c()V

    new-instance p0, LZ3/D;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, LZ3/D;-><init>([B)V

    return-object p0
.end method

.method public d(Landroid/view/View;)Ljava/lang/ref/WeakReference;
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, LMd/c;->b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, LMd/c;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/UUID;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/util/UUID;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/ref/WeakReference;

    return-object p0

    :cond_1
    check-cast v1, Ljava/util/UUID;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key(="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") of the tag on a view has corrupted by me."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VUID"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget v0, p0, LMd/c;->b:I

    iget-object p0, p0, LMd/c;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f(I)V
    .locals 2

    iget v0, p0, LMd/c;->b:I

    invoke-static {v0, p1}, Lw6/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callback onStateChanged="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lw6/c;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    iget-object v0, p0, LMd/c;->c:Ljava/lang/Object;

    check-cast v0, LA6/a;

    invoke-virtual {v0, p1}, LA6/a;->m(I)V

    iput p1, p0, LMd/c;->b:I

    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FloatingPaneViewModel"

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, LMd/c;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, LMd/c;->b:I

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    const-string p0, "COLON(:)"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_2
    const-string p0, "COMMA(,)"

    goto :goto_0

    :pswitch_3
    const-string p0, "RIGHT SQUARE(])"

    goto :goto_0

    :pswitch_4
    const-string p0, "LEFT SQUARE([)"

    goto :goto_0

    :pswitch_5
    const-string p0, "RIGHT BRACE(})"

    goto :goto_0

    :pswitch_6
    const-string p0, "LEFT BRACE({)"

    goto :goto_0

    :pswitch_7
    const-string v1, "VALUE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, LMd/c;->c:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, ")"

    goto :goto_0

    :pswitch_8
    const-string p0, "END OF FILE"

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
