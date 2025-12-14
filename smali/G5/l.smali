.class public final LG5/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/g;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:Z

.field public d:Lu7/c;

.field public final e:Lu7/e;


# direct methods
.method public synthetic constructor <init>(Lu7/e;I)V
    .locals 0

    iput p2, p0, LG5/l;->a:I

    const/4 p2, 0x0

    iput-boolean p2, p0, LG5/l;->b:Z

    iput-boolean p2, p0, LG5/l;->c:Z

    iput-object p1, p0, LG5/l;->e:Lu7/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)Lu7/g;
    .locals 3

    iget v0, p0, LG5/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, LG5/l;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LG5/l;->b:Z

    iget-object v0, p0, LG5/l;->d:Lu7/c;

    iget-boolean v1, p0, LG5/l;->c:Z

    iget-object v2, p0, LG5/l;->e:Lu7/e;

    check-cast v2, Lx7/e;

    invoke-virtual {v2, v0, p1, v1}, Lx7/e;->f(Lu7/c;Ljava/lang/Object;Z)V

    return-object p0

    :cond_0
    new-instance p0, Lu7/b;

    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-boolean v0, p0, LG5/l;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LG5/l;->b:Z

    iget-object v0, p0, LG5/l;->d:Lu7/c;

    iget-boolean v1, p0, LG5/l;->c:Z

    iget-object v2, p0, LG5/l;->e:Lu7/e;

    check-cast v2, LG5/j;

    invoke-virtual {v2, v0, p1, v1}, LG5/j;->d(Lu7/c;Ljava/lang/Object;Z)V

    return-object p0

    :cond_1
    new-instance p0, Lu7/b;

    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Z)Lu7/g;
    .locals 3

    iget v0, p0, LG5/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, LG5/l;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LG5/l;->b:Z

    iget-object v0, p0, LG5/l;->d:Lu7/c;

    iget-boolean v1, p0, LG5/l;->c:Z

    iget-object v2, p0, LG5/l;->e:Lu7/e;

    check-cast v2, Lx7/e;

    invoke-virtual {v2, v0, p1, v1}, Lx7/e;->d(Lu7/c;IZ)V

    return-object p0

    :cond_0
    new-instance p0, Lu7/b;

    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-boolean v0, p0, LG5/l;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LG5/l;->b:Z

    iget-object v0, p0, LG5/l;->d:Lu7/c;

    iget-boolean v1, p0, LG5/l;->c:Z

    iget-object v2, p0, LG5/l;->e:Lu7/e;

    check-cast v2, LG5/j;

    invoke-virtual {v2, v0, p1, v1}, LG5/j;->e(Lu7/c;IZ)V

    return-object p0

    :cond_1
    new-instance p0, Lu7/b;

    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
