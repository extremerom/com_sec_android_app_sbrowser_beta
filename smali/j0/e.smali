.class public final Lj0/e;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final b:Lj0/e;

.field public static final c:Lj0/e;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lj0/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj0/e;-><init>(II)V

    sput-object v0, Lj0/e;->b:Lj0/e;

    new-instance v0, Lj0/e;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lj0/e;-><init>(II)V

    sput-object v0, Lj0/e;->c:Lj0/e;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lj0/e;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lj0/e;->a:I

    packed-switch p0, :pswitch_data_0

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/util/Map;

    new-instance p0, Lj0/h;

    invoke-direct {p0, p1}, Lj0/h;-><init>(Ljava/util/Map;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
