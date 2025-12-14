.class public final LZb/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, LZb/j;->a:I

    iput-object p1, p0, LZb/j;->b:Ljava/lang/String;

    iput-object p2, p0, LZb/j;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, LZb/j;->a:I

    check-cast p1, LZb/o;

    packed-switch v0, :pswitch_data_0

    const-string v0, "$this$function"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LZb/l;->a:LZb/d;

    filled-new-array {v0}, [LZb/d;

    move-result-object v0

    iget-object v1, p0, LZb/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, LZb/o;->a(Ljava/lang/String;[LZb/d;)V

    sget-object v0, LZb/l;->b:LZb/d;

    sget-object v1, LZb/l;->c:LZb/d;

    filled-new-array {v0, v1}, [LZb/d;

    move-result-object v0

    iget-object p0, p0, LZb/j;->c:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LZb/o;->b(Ljava/lang/String;[LZb/d;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    const-string v0, "$this$function"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LZb/l;->c:LZb/d;

    filled-new-array {v0}, [LZb/d;

    move-result-object v1

    iget-object v2, p0, LZb/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, LZb/o;->a(Ljava/lang/String;[LZb/d;)V

    sget-object v1, LZb/l;->b:LZb/d;

    filled-new-array {v1, v0}, [LZb/d;

    move-result-object v0

    iget-object p0, p0, LZb/j;->c:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LZb/o;->b(Ljava/lang/String;[LZb/d;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    const-string v0, "$this$function"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LZb/l;->b:LZb/d;

    filled-new-array {v0}, [LZb/d;

    move-result-object v1

    iget-object v2, p0, LZb/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, LZb/o;->a(Ljava/lang/String;[LZb/d;)V

    sget-object v1, LZb/l;->c:LZb/d;

    filled-new-array {v1}, [LZb/d;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, LZb/o;->a(Ljava/lang/String;[LZb/d;)V

    sget-object v3, LZb/l;->a:LZb/d;

    filled-new-array {v0, v1, v1, v3}, [LZb/d;

    move-result-object v0

    iget-object p0, p0, LZb/j;->c:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LZb/o;->a(Ljava/lang/String;[LZb/d;)V

    filled-new-array {v3}, [LZb/d;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, LZb/o;->b(Ljava/lang/String;[LZb/d;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    const-string v0, "$this$function"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LZb/l;->b:LZb/d;

    filled-new-array {v0}, [LZb/d;

    move-result-object v1

    iget-object v2, p0, LZb/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, LZb/o;->a(Ljava/lang/String;[LZb/d;)V

    sget-object v1, LZb/l;->c:LZb/d;

    sget-object v3, LZb/l;->a:LZb/d;

    filled-new-array {v0, v0, v1, v3}, [LZb/d;

    move-result-object v0

    iget-object p0, p0, LZb/j;->c:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LZb/o;->a(Ljava/lang/String;[LZb/d;)V

    filled-new-array {v3}, [LZb/d;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, LZb/o;->b(Ljava/lang/String;[LZb/d;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_3
    const-string v0, "$this$function"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LZb/l;->b:LZb/d;

    filled-new-array {v0}, [LZb/d;

    move-result-object v1

    iget-object v2, p0, LZb/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, LZb/o;->a(Ljava/lang/String;[LZb/d;)V

    filled-new-array {v0, v0, v0}, [LZb/d;

    move-result-object v1

    iget-object p0, p0, LZb/j;->c:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, LZb/o;->a(Ljava/lang/String;[LZb/d;)V

    filled-new-array {v0}, [LZb/d;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, LZb/o;->b(Ljava/lang/String;[LZb/d;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_4
    const-string v0, "$this$function"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LZb/l;->b:LZb/d;

    filled-new-array {v0}, [LZb/d;

    move-result-object v1

    iget-object v2, p0, LZb/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, LZb/o;->a(Ljava/lang/String;[LZb/d;)V

    sget-object v1, LZb/l;->a:LZb/d;

    filled-new-array {v0, v0, v1, v1}, [LZb/d;

    move-result-object v0

    iget-object p0, p0, LZb/j;->c:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LZb/o;->a(Ljava/lang/String;[LZb/d;)V

    filled-new-array {v1}, [LZb/d;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, LZb/o;->b(Ljava/lang/String;[LZb/d;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
