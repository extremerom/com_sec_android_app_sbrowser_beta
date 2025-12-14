.class public final LS/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/G;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LS/x;->a:I

    iput-object p2, p0, LS/x;->b:Ljava/lang/Object;

    iput-object p3, p0, LS/x;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, LS/x;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LS/x;->b:Ljava/lang/Object;

    check-cast v0, LW/y;

    iget-object v0, v0, LW/y;->c:Ljava/util/LinkedHashSet;

    iget-object p0, p0, LS/x;->c:Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, LS/x;->b:Ljava/lang/Object;

    check-cast v0, La0/a0;

    invoke-interface {v0}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LT/a;

    if-eqz v1, :cond_1

    iget-object p0, p0, LS/x;->c:Ljava/lang/Object;

    check-cast p0, LP7/c;

    if-eqz p0, :cond_0

    new-instance v1, LF6/e;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, LQc/m0;

    invoke-virtual {p0, v1}, LQc/m0;->a(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x0

    invoke-interface {v0, p0}, La0/a0;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
