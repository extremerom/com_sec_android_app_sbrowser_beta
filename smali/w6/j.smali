.class public final synthetic Lw6/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw6/q;

.field public final synthetic c:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lw6/q;Landroid/graphics/Rect;I)V
    .locals 0

    iput p3, p0, Lw6/j;->a:I

    iput-object p1, p0, Lw6/j;->b:Lw6/q;

    iput-object p2, p0, Lw6/j;->c:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr1/e;ZFF)V
    .locals 0

    iget p1, p0, Lw6/j;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lw6/j;->b:Lw6/q;

    const-string p2, "this$0"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw6/j;->c:Landroid/graphics/Rect;

    const-string p2, "$to"

    invoke-static {p0, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lw6/q;->p:LA6/a;

    invoke-virtual {p1, p0}, LA6/a;->onInsert(Landroid/graphics/Rect;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lw6/j;->b:Lw6/q;

    const-string p2, "this$0"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw6/j;->c:Landroid/graphics/Rect;

    const-string p2, "$to"

    invoke-static {p0, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lw6/q;->p:LA6/a;

    invoke-virtual {p1, p0}, LA6/a;->onInsert(Landroid/graphics/Rect;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
