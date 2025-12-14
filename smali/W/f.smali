.class public final LW/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/G;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LW/f;->a:I

    iput-object p2, p0, LW/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, LW/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LW/f;->b:Ljava/lang/Object;

    check-cast p0, LW/l;

    invoke-virtual {p0}, LW/l;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, LW/l;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, LW/f;->b:Ljava/lang/Object;

    check-cast p0, LW/g;

    const/4 v0, 0x0

    iput-object v0, p0, LW/g;->d:Li0/a;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
