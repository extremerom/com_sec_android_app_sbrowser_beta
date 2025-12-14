.class public final Loc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final b:Loc/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loc/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Loc/b;-><init>(I)V

    sput-object v0, Loc/b;->b:Loc/b;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Loc/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Loc/b;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LJb/d;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Loc/d;->l(LJb/d;)LJc/i;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, LJb/l;

    sget p0, Loc/d;->a:I

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJb/l;->k()LJb/l;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
