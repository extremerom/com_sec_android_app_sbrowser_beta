.class public final Lwc/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    iput p1, p0, Lwc/e;->a:I

    iput-object p2, p0, Lwc/e;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lwc/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lwc/e;->b:Ljava/util/ArrayList;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lwc/e;->b:Ljava/util/ArrayList;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lwc/e;->b:Ljava/util/ArrayList;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
