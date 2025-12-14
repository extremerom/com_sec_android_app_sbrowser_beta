.class public final Lkc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# static fields
.field public static final b:Lkc/a;

.field public static final c:Lkc/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lkc/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkc/a;-><init>(I)V

    sput-object v0, Lkc/a;->b:Lkc/a;

    new-instance v0, Lkc/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkc/a;-><init>(I)V

    sput-object v0, Lkc/a;->c:Lkc/a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkc/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lkc/a;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LJb/l;

    check-cast p2, LJb/l;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    check-cast p1, LJb/l;

    check-cast p2, LJb/l;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
