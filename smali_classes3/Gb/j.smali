.class public final LGb/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:LGb/l;


# direct methods
.method public synthetic constructor <init>(LGb/l;I)V
    .locals 0

    iput p2, p0, LGb/j;->a:I

    iput-object p1, p0, LGb/j;->b:LGb/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LGb/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LGb/j;->b:LGb/l;

    invoke-static {p0}, LGb/l;->c(LGb/l;)Lhc/c;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LGb/j;->b:LGb/l;

    invoke-static {p0}, LGb/l;->a(LGb/l;)Lhc/c;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
