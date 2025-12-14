.class public final LC5/b;
.super LG5/t;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LC5/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 0

    iget p0, p0, LC5/b;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
