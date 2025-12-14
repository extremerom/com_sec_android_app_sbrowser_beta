.class public final LNc/D0;
.super LUc/w;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lib/h;Lib/c;I)V
    .locals 0

    iput p3, p0, LNc/D0;->e:I

    invoke-direct {p0, p2, p1}, LUc/w;-><init>(Lib/c;Lib/h;)V

    return-void
.end method


# virtual methods
.method public final G(Ljava/lang/Throwable;)Z
    .locals 1

    iget v0, p0, LNc/D0;->e:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, LRc/p;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LNc/t0;->A(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
