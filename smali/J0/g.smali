.class public final LJ0/g;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final b:LJ0/g;

.field public static final c:LJ0/g;

.field public static final d:LJ0/g;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LJ0/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJ0/g;-><init>(II)V

    sput-object v0, LJ0/g;->b:LJ0/g;

    new-instance v0, LJ0/g;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJ0/g;-><init>(II)V

    sput-object v0, LJ0/g;->c:LJ0/g;

    new-instance v0, LJ0/g;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJ0/g;-><init>(II)V

    sput-object v0, LJ0/g;->d:LJ0/g;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LJ0/g;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, LJ0/g;->a:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
