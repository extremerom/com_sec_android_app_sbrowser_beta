.class public final synthetic LG5/h4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC7/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LH4/u;


# direct methods
.method public synthetic constructor <init>(LH4/u;I)V
    .locals 0

    iput p2, p0, LG5/h4;->a:I

    iput-object p1, p0, LG5/h4;->b:LH4/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LG5/h4;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LE4/b;

    const-string v1, "proto"

    invoke-direct {v0, v1}, LE4/b;-><init>(Ljava/lang/String;)V

    sget-object v1, LG5/i4;->d:LG5/i4;

    iget-object p0, p0, LG5/h4;->b:LH4/u;

    const-string v2, "FIREBASE_ML_SDK"

    invoke-virtual {p0, v2, v0, v1}, LH4/u;->a(Ljava/lang/String;LE4/b;LE4/d;)LH4/v;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, LE4/b;

    const-string v1, "json"

    invoke-direct {v0, v1}, LE4/b;-><init>(Ljava/lang/String;)V

    sget-object v1, LG5/i4;->e:LG5/i4;

    iget-object p0, p0, LG5/h4;->b:LH4/u;

    const-string v2, "FIREBASE_ML_SDK"

    invoke-virtual {p0, v2, v0, v1}, LH4/u;->a(Ljava/lang/String;LE4/b;LE4/d;)LH4/v;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
