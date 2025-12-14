.class public final LUc/A;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# static fields
.field public static final b:LUc/A;

.field public static final c:LUc/A;

.field public static final d:LUc/A;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LUc/A;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LUc/A;-><init>(II)V

    sput-object v0, LUc/A;->b:LUc/A;

    new-instance v0, LUc/A;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LUc/A;-><init>(II)V

    sput-object v0, LUc/A;->c:LUc/A;

    new-instance v0, LUc/A;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LUc/A;-><init>(II)V

    sput-object v0, LUc/A;->d:LUc/A;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LUc/A;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, LUc/A;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LUc/E;

    check-cast p2, Lib/f;

    instance-of p0, p2, LUc/B;

    if-eqz p0, :cond_0

    check-cast p2, LUc/B;

    iget-object p0, p1, LUc/E;->a:Lib/h;

    invoke-virtual {p2, p0}, LUc/B;->g(Lib/h;)Ljava/lang/Object;

    move-result-object p0

    iget v0, p1, LUc/E;->d:I

    iget-object v1, p1, LUc/E;->b:[Ljava/lang/Object;

    aput-object p0, v1, v0

    add-int/lit8 p0, v0, 0x1

    iput p0, p1, LUc/E;->d:I

    iget-object p0, p1, LUc/E;->c:[LUc/B;

    aput-object p2, p0, v0

    :cond_0
    return-object p1

    :pswitch_0
    check-cast p1, LUc/B;

    check-cast p2, Lib/f;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    instance-of p0, p2, LUc/B;

    if-eqz p0, :cond_2

    check-cast p2, LUc/B;

    move-object p1, p2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    move-object p1, p0

    :goto_0
    return-object p1

    :pswitch_1
    check-cast p2, Lib/f;

    instance-of p0, p2, LUc/B;

    if-eqz p0, :cond_6

    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_3

    check-cast p1, Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    const/4 p0, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_4
    move p1, p0

    :goto_2
    if-nez p1, :cond_5

    move-object p1, p2

    goto :goto_3

    :cond_5
    add-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    move-object p1, p0

    :cond_6
    :goto_3
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
