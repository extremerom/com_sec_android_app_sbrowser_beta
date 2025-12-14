.class public final synthetic Lw6/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lw6/q;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lw6/q;I)V
    .locals 0

    iput p3, p0, Lw6/g;->a:I

    iput-object p1, p0, Lw6/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lw6/g;->c:Lw6/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lr1/e;FF)V
    .locals 1

    iget p1, p0, Lw6/g;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lw6/g;->b:Ljava/lang/Object;

    check-cast p1, Ltb/s;

    iget-object p0, p0, Lw6/g;->c:Lw6/q;

    invoke-static {p1, p0}, Lw6/q;->b(Ltb/s;Lw6/q;)V

    return-void

    :pswitch_0
    const-string p1, "$from"

    iget-object p3, p0, Lw6/g;->b:Ljava/lang/Object;

    check-cast p3, Landroid/graphics/Rect;

    invoke-static {p3, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "this$0"

    iget-object p0, p0, Lw6/g;->c:Lw6/q;

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x3a83126f    # 0.001f

    mul-float/2addr p2, p1

    iget-object p1, p0, Lw6/q;->l:Landroid/graphics/Rect;

    sget-object v0, Lw6/q;->k0:LY2/P;

    invoke-virtual {v0, p2, p3, p1}, LY2/P;->a(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    const-string p2, "r"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LE5/t;->d(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    :pswitch_1
    const-string p1, "$from"

    iget-object p3, p0, Lw6/g;->b:Ljava/lang/Object;

    check-cast p3, Landroid/graphics/Rect;

    invoke-static {p3, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "this$0"

    iget-object p0, p0, Lw6/g;->c:Lw6/q;

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x3a83126f    # 0.001f

    mul-float/2addr p2, p1

    iget-object p1, p0, Lw6/q;->l:Landroid/graphics/Rect;

    sget-object v0, Lw6/q;->k0:LY2/P;

    invoke-virtual {v0, p2, p3, p1}, LY2/P;->a(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    const-string p2, "r"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LE5/t;->d(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
